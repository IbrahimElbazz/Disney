import 'package:disney/core/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:disney/features/home/data/models/get_top_anime_response_model.dart';

class AnimeDetailsSection extends StatelessWidget {
  const AnimeDetailsSection({super.key, required this.animeData});
  final Anime animeData;

  @override
  Widget build(BuildContext context) {
    final genreChips = animeData.genres.map((genre) {
      return Chip(
        label: Text(genre.name),
        backgroundColor: AppColor.primary,
        labelStyle: const TextStyle(color: Colors.white),
      );
    }).toList();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Synopsis Section
          Text(
            'Synopsis',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "${animeData.synopsis?.substring(0, 500)} ...",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15.sp,
              height: 1.5,
            ),
          ),
          SizedBox(height: 10.h),

          // Genres Section
          Text(
            'Genres',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Wrap(spacing: 8.0, runSpacing: 4.0, children: genreChips),
          SizedBox(height: 24.h),

          // Other Details Section
          Text(
            'Details',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          _buildDetailRow('Status', animeData.status ?? 'N/A'),
          _buildDetailRow('Episodes', animeData.episodes?.toString() ?? 'N/A'),
          _buildDetailRow('Age Rating', animeData.rating ?? 'N/A'),
          _buildDetailRow('Year', animeData.year?.toString() ?? 'N/A'),
          _buildDetailRow('Score', animeData.score?.toString() ?? 'N/A'),
          _buildDetailRow('Rank', '#${animeData.rank?.toString() ?? 'N/A'}'),
          _buildDetailRow(
            'Studios',
            animeData.studios.map((s) => s.name).join(', '),
          ),
        ],
      ),
    );
  }

  // Helper widget to build a detail row
  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100.w,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(
              value,
              style: TextStyle(color: Colors.white70, fontSize: 16.sp),
            ),
          ),
        ],
      ),
    );
  }
}
