import 'package:flutter/material.dart';
import 'package:weather_now/src/core/resources/app_colours.dart';

class OutlinedActionButton extends StatefulWidget {
  final Function? onClick;
  final String? buttonText;

  const OutlinedActionButton({this.onClick, this.buttonText, Key? key})
      : super(key: key);

  @override
  _OutlinedActionButtonState createState() => _OutlinedActionButtonState();
}

class _OutlinedActionButtonState extends State<OutlinedActionButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(widget.buttonText!.toUpperCase(),
          style: Theme.of(context)
              .textTheme
              .button!
              .copyWith(color: Colors.black87)),
      onPressed: widget.onClick as void Function()?,
      style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
            side: const BorderSide(color: AppColours.primary, width: 4.0),
          )),
    );
  }
}
