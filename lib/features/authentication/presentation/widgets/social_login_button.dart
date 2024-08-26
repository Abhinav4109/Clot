import 'package:clot/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final String tileText;
  final String imageString;
  const SocialLoginButton({super.key, required this.tileText, required this.imageString});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
         color: AppColors.fieldColor, // Background color
        borderRadius: BorderRadius.circular(100),
      ),
      child: ListTile(
        leading: Image.asset(imageString),
        title: Text(
          tileText,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
