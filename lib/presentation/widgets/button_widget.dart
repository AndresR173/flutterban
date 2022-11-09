import 'package:flutter/material.dart';

class ButtonGeneric extends StatelessWidget {
  const ButtonGeneric({
    super.key,
    required this.label,
    this.onPressed,
    this.labelStyle,
    this.backgroundColor = Colors.red,
  });

  final String label;
  final Color? backgroundColor;
  final void Function()? onPressed;
  final TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 200,
      height: 50,
      child: MaterialButton(
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: const BorderSide(color: Colors.red),
        ),
        color: backgroundColor,
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ).merge(labelStyle),
        ),
      ),
    );
  }
}
