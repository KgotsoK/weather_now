import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static const TextStyle heading =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w700);

  static const TextStyle subHeading =
      TextStyle(fontSize: 25, fontWeight: FontWeight.w600);

  static const TextStyle listItemTitle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w500);

  static const TextStyle heroCaption =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white);

  static const TextStyle detailLabel = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black54);
}
