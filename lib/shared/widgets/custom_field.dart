import 'package:clot/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 15,
          ),
          fillColor: AppColors.fieldColor,
          filled: true,
          hintStyle: TextStyle(color: AppColors.fieldtextColor, fontSize: 18, fontWeight: FontWeight.w300)),
    );
  }
}
