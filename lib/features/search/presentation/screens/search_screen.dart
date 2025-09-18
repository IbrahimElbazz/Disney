import 'package:disney/core/routes/route_extension.dart';
import 'package:disney/core/routes/routes_constant.dart';
import 'package:disney/core/strings/app_string.dart';
import 'package:disney/core/themes/app_color.dart';
import 'package:disney/features/search/logic/cubit/search_cubit.dart';
import 'package:disney/features/search/logic/cubit/search_state.dart';
import 'package:disney/features/search/presentation/widgets/loading_search_list.dart';
import 'package:disney/features/search/presentation/widgets/search_empty.dart';
import 'package:disney/features/search/presentation/widgets/search_not_found.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    final query = _searchController.text.trim();
    if (query.isNotEmpty) {
      context.read<SearchCubit>().searchAnime(query);
    }
    setState(() {});
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: AppColor.blueDark,
        appBar: AppBar(
          foregroundColor: AppColor.blueDark,
          surfaceTintColor: AppColor.blueDark,
          backgroundColor: AppColor.blueDark,
          leadingWidth: 0,
          title: Container(
            height: 50.h,
            decoration: BoxDecoration(
              color: AppColor.white10,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: TextField(
              controller: _searchController,
              style: const TextStyle(color: AppColor.white),
              cursorColor: AppColor.white,
              decoration: InputDecoration(
                hintText: AppString.searchMoviesShowsAndMore,
                hintStyle: TextStyle(
                  color: AppColor.white.withValues(alpha: 0.5),
                  fontSize: 18.sp,
                ),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColor.white50,
                  size: 20.sp,
                ),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: Icon(
                          Icons.clear,
                          color: AppColor.white50,
                          size: 20.sp,
                        ),
                        onPressed: () {
                          _searchController.clear();
                          setState(() {});
                        },
                      )
                    : null,
                contentPadding: EdgeInsets.symmetric(vertical: 8.h),
              ),
              onChanged: (_) => _onSearchChanged(),
            ),
          ),
        ),
        body: _searchController.text.isEmpty
            ? const SearchEmpty()
            : BlocBuilder<SearchCubit, SearchState>(
                buildWhen: (previous, current) {
                  return current is ErrorSearch ||
                      current is LoadingSearch ||
                      current is SuccessSearch;
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox.shrink(),
                    loadingSearch: () => LoadingSearchList(),
                    errorSearch: (error) => Center(child: Text(error.message)),
                    successSearch: (data) {
                      return data.data.isEmpty
                          ? SearchNotFound(searchController: _searchController)
                          : ListView.builder(
                              physics: BouncingScrollPhysics(),
                              padding: const EdgeInsets.all(16.0),
                              itemCount: data.data.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  color: AppColor.white10,
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        data
                                            .data[index]
                                            .images
                                            .jpg
                                            .largeImageUrl!,
                                      ),
                                    ),
                                    title: Text(
                                      'Movie $index',
                                      style: const TextStyle(
                                        color: AppColor.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Text(
                                      '${data.data[index].type}',
                                      style: TextStyle(
                                        color: AppColor.white.withValues(
                                          alpha: 0.7,
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      context.pushNamed(
                                        RoutesConstant.animeDetailsScreen,
                                        arguments: data.data[index],
                                      );
                                    },
                                  ),
                                );
                              },
                            );
                    },
                  );
                },
              ),
      ),
    );
  }
}
