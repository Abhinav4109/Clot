import 'package:clot/features/authentication/domain/usecases/signin_use_case.dart';
import 'package:clot/features/authentication/presentation/screens/signin_password_screen.dart';
import 'package:clot/features/authentication/presentation/widgets/social_login_button.dart';
import 'package:clot/shared/widgets/custom_button.dart';
import 'package:clot/shared/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});
  static const routeName = '/signin-screen';
  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  late TextEditingController _emailController;
  final _formKey = GlobalKey<FormState>();
  final SigninUseCase _signinUseCase = SigninUseCase();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      Navigator.of(context).pushReplacementNamed(SigninPasswordScreen.routeName,
          arguments: _emailController.text);
    }
  }

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
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sign in',
                      style: Theme.of(context).textTheme.headlineLarge),
                  const SizedBox(height: 30),
                  CustomTextField(
                    controller: _emailController,
                    validator: (value) => _signinUseCase.validateEmail(value),
                    hintText: 'Email Address',
                  ),
                  const SizedBox(height: 25),
                  CustomButton(
                    onPressed: _submitForm,
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
                  SizedBox(
                    height: screenHeight * 0.225,
                    width: double.infinity,
                  ),
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
          ),
        )),
      ),
    );
  }
}
