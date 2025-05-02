import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../utils/app_text.dart';


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
        style: AppTextTheme.text14.copyWith(
          decoration: TextDecoration.underline,
          color: AppColor.secondary,
        ),
      ),
    );
  }
}
