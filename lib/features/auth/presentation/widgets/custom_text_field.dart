import 'package:flutter/material.dart';
import 'package:sunwise_v2/core/theme/app_colors.dart';
import 'package:sunwise_v2/core/theme/app_texts.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool isPassword;
  final bool isVisible;
  final TextEditingController controller;
  final VoidCallback? onToggleVisibility;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.isPassword = false,
    this.isVisible = false,
    required this.controller,
    this.onToggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style:
              TextStyleManager.regular12.copyWith(color: AppColors.blackColor),
        ),
        const SizedBox(height: 4),
        SizedBox(
          height: 42,
          child: TextField(
            controller: controller,
            cursorHeight: 16,
            obscureText: isPassword && !isVisible,
            style: TextStyleManager.regular12
                .copyWith(color: AppColors.blackColor),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              labelText: hintText,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelStyle: TextStyleManager.regular12
                  .copyWith(color: AppColors.greyColorC2),
              filled: true,
              fillColor: AppColors.whiteColorF5.withValues(alpha: 0.5),
              suffixIcon: isPassword
                  ? IconButton(
                      onPressed: onToggleVisibility,
                      icon: isVisible
                          ? Image.asset(
                              'assets/icons/eye-closed.png',
                              scale: 5,
                            )
                          : Image.asset(
                              'assets/icons/eye.png',
                              scale: 5,
                            ))
                  : null,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(99),
                borderSide: const BorderSide(color: AppColors.greyColorBC),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(99),
                borderSide: BorderSide(
                    color: AppColors.blackColor.withValues(alpha: 0.8)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
