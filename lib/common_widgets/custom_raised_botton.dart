import 'package:flutter/material.dart';

class CustomRasedButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CustomRasedButton({
    required this.child,
    required this.onPressed,
    this.height = 50.0,
    required this.style,
  });

  final Widget child;
  final VoidCallback onPressed;
  final double height;
  final ButtonStyle style;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        style: style,
        //style: ElevatedButton.styleFrom(primary: Colors.blue),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
