import 'package:clot/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        errorStyle: TextStyle(
          color: AppColors.buttonColor,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        fillColor: AppColors.fieldColor,
        filled: true,
        hintStyle: TextStyle(
            color: AppColors.fieldtextColor,
            fontSize: 18,
            fontWeight: FontWeight.w300),
      ),
    );
  }
}
