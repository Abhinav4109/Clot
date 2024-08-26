import 'package:clot/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  const CustomButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: AppColors.buttonColor,
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 58)),
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ));
  }
}
