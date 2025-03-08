import 'package:flutter/material.dart';
import 'package:sunwise_v2/core/theme/app_colors.dart';
import 'package:sunwise_v2/core/theme/app_texts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: const ButtonStyle(
          minimumSize: WidgetStatePropertyAll(Size(double.infinity, 42)),
          backgroundColor: WidgetStatePropertyAll(AppColors.yellowColor)),
      child: Text(
        text,
        style: TextStyleManager.medium14.copyWith(color: AppColors.whiteColor),
      ),
    );
  }
}
