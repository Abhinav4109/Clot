import 'package:clot/features/authentication/presentation/widgets/social_login_button.dart';
import 'package:clot/shared/widgets/custom_button.dart';
import 'package:clot/shared/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});
  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25)
                .copyWith(top: screenHeight * 0.12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Sign in', style: Theme.of(context).textTheme.headlineLarge),
                const SizedBox(height: 30),
                const CustomTextField(
                  hintText: 'Email Address',
                ),
                const SizedBox(height: 25),
                const CustomButton(
                  buttonText: 'Continue',
                ),
                const SizedBox(height: 15),
                RichText(
                  text: const TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Create One',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.225, width: double.infinity,),
                const SocialLoginButton(
                    tileText: 'Continue with Google',
                    imageString: 'assets/icons/ic_google.png'),
                const SizedBox(height: 20),
                const SocialLoginButton(
                    tileText: 'Continue with Facebook',
                    imageString: 'assets/icons/ic_facebook.png'),
                const SizedBox(height: 20),
                const SocialLoginButton(
                    tileText: 'Continue with Apple',
                    imageString: 'assets/icons/ic_apple.png'),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
