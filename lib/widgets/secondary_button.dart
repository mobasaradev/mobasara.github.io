import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          color: Color(0xFF00FFFF),
          fontSize: 14,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
