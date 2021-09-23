import 'package:flutter/material.dart';
import 'package:weather_now/src/core/resources/app_colours.dart';
import 'package:weather_now/src/core/resources/app_text_style.dart';

class ValueShowcase extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const ValueShowcase(
      {required this.title, required this.value, required this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      height: 64,
      width: 56,
      decoration: const BoxDecoration(
        color: AppColours.background,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(title, style: AppTextStyle.detailLabel),
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            value,
            style: AppTextStyle.subHeading
                .copyWith(color: AppColours.accent, fontSize: 18.0),
          )
        ],
      ),
    );
  }
}
