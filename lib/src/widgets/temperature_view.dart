import 'package:flutter/material.dart';
import 'package:weather_now/src/core/resources/app_text_style.dart';

class TemperatureView extends StatelessWidget {
  final double? temperature;
  final TempViewSize size;
  final Color color;

  const TemperatureView(
      {this.temperature, required this.size, required this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${temperature == null ? "--" : temperature!.round()}°",
          style: AppTextStyle.subHeading.copyWith(
            color: color,
            fontSize: textSize(),
          ),
        ),
      ],
    );
  }

  double textSize() {
    switch (size) {
      case TempViewSize.small:
        return 12.0;
      case TempViewSize.medium:
        return 18.0;
      case TempViewSize.large:
        return 40.0;
    }
  }
}

enum TempViewSize { small, medium, large }
