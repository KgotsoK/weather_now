import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_now/src/core/resources/app_text_style.dart';
import 'package:weather_now/src/core/resources/image_paths.dart';

class LoadingPageContent extends StatelessWidget {
  final String loadingText;

  const LoadingPageContent(this.loadingText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(pathAnimLoader, width: 200, height: 200),
          Text(
            loadingText,
            style: AppTextStyle.subHeading,
          )
        ],
      ),
    );
  }
}
