import 'package:clot/features/authentication/domain/usecases/signin_use_case.dart';
import 'package:clot/shared/widgets/custom_button.dart';
import 'package:clot/shared/widgets/custom_field.dart';
import 'package:flutter/material.dart';

class SigninPasswordScreen extends StatefulWidget {
  const SigninPasswordScreen({super.key, required this.emailId});
  final String emailId;
  static const routeName = 'signin-password-screen';
  @override
  State<SigninPasswordScreen> createState() => _SigninPasswordScreenState();
}

class _SigninPasswordScreenState extends State<SigninPasswordScreen> {
  late TextEditingController _passwordController;
  final _formKey = GlobalKey<FormState>();
  final SigninUseCase _signinUseCase = SigninUseCase();

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print(widget.emailId);
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
                    controller: _passwordController,
                    validator: (value) => _signinUseCase.validatePass(value),
                    hintText: 'Password',
                  ),
                  const SizedBox(height: 25),
                  CustomButton(
                    onPressed: _submitForm,
                    buttonText: 'Continue',
                  ),
                  const SizedBox(height: 15),
                  RichText(
                    text: const TextSpan(
                      text: 'Forgot Password? ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Reset',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
