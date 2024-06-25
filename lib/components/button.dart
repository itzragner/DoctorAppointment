import 'package:flutter/material.dart';
import 'package:untitled/utils/config.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.width,
      required this.title,
      required this.disabled,
      required this.onPressed
      });

  final double width;
  final String title;
  final bool disabled;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: disabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Config.primaryColor,
          foregroundColor: Colors.white,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
