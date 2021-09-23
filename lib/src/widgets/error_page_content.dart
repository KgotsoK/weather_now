import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_now/src/core/resources/app_text_style.dart';
import 'package:weather_now/src/core/resources/image_paths.dart';

import 'outlined_action_button.dart';

class ErrorPageContent extends StatelessWidget {
  final String errorText;
  final String actionButtonText;
  final Function onClick;

  const ErrorPageContent(
      {required this.errorText,
      required this.actionButtonText,
      required this.onClick,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(pathAnimError, width: 200, height: 200, repeat: false),
          Text(
            errorText,
            style: AppTextStyle.subHeading,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: OutlinedActionButton(
                onClick: onClick, buttonText: actionButtonText),
          )
        ],
      ),
    );
  }
}
