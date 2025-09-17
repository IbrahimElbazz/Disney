import 'package:disney/core/themes/app_color.dart';
import 'package:disney/core/widgets/custom_leading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PlayVidScreen extends StatefulWidget {
  const PlayVidScreen({super.key, required this.url});
  final String? url;

  @override
  State<PlayVidScreen> createState() => _PlayVidScreenState();
}

class _PlayVidScreenState extends State<PlayVidScreen> {
  WebViewController? _webViewController;
  bool _isLoading = true;
  double _loadingProgress = 0;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _initializeWebView();
  }

  Future<void> _initializeWebView() async {
    if (widget.url == null || widget.url!.isEmpty) {
      setState(() {
        _errorMessage = "No video URL provided.";
        _isLoading = false;
      });
      return;
    }

    try {
      // Extract YouTube video ID from various URL formats
      String videoId = _extractYouTubeId(widget.url!);

      if (videoId.isEmpty) {
        throw Exception('Invalid YouTube URL: ${widget.url}');
      }

      // Create embed URL with autoplay
      final embedUrl =
          'https://www.youtube.com/embed/$videoId?autoplay=1&playsinline=1';

      print('Attempting to load WebView with URL: $embedUrl');

      _webViewController = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(AppColor.blueDark)
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              if (mounted) {
                setState(() {
                  _loadingProgress = progress / 100;
                });
              }
            },
            onPageStarted: (String url) {
              if (mounted) {
                setState(() {
                  _isLoading = true;
                  _errorMessage = null;
                });
              }
            },
            onPageFinished: (String url) {
              if (mounted) {
                setState(() {
                  _isLoading = false;
                });
              }
            },
            onWebResourceError: (WebResourceError error) {
              print(
                'WebView error loading URL: ${error.url}. Description: ${error.description}',
              );
              if (mounted) {
                setState(() {
                  _errorMessage =
                      "Failed to load video. Please check your internet connection.\nError: ${error.description}";
                  _isLoading = false;
                });
              }
            },
          ),
        )
        ..loadRequest(Uri.parse(embedUrl));
    } catch (e) {
      print('Error initializing WebView: $e');
      if (mounted) {
        setState(() {
          _errorMessage = "An unexpected error occurred: $e";
          _isLoading = false;
        });
      }
    }
  }

  String _extractYouTubeId(String url) {
    try {
      final uri = Uri.parse(url);

      // Handle various YouTube URL formats
      if (uri.host.contains('youtu.be')) {
        return uri.pathSegments.first;
      } else if (uri.host.contains('youtube.com')) {
        return uri.queryParameters['v'] ?? uri.pathSegments.last;
      }

      return '';
    } catch (e) {
      print('Error parsing YouTube URL: $e');
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blueDark,
      body: SafeArea(
        child: Stack(
          children: [
            if (_webViewController != null && _errorMessage == null)
              WebViewWidget(controller: _webViewController!)
            else if (_errorMessage != null)
              Center(
                child: Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Text(
                    _errorMessage!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),

            if (_isLoading)
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoActivityIndicator(radius: 16.w),
                    SizedBox(height: 16.h),
                    Text(
                      'Loading video...',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    if (_loadingProgress > 0)
                      SizedBox(
                        width: 200.w,
                        child: LinearProgressIndicator(
                          value: _loadingProgress,
                          backgroundColor: Colors.grey[800],
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            AppColor.primary,
                          ),
                        ),
                      ),
                  ],
                ),
              ),

            // Back button
            Positioned(top: 10.h, left: 10.h, child: CustomLeading()),
          ],
        ),
      ),
    );
  }
}
