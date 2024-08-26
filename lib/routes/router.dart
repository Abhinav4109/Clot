import 'package:clot/features/authentication/presentation/screens/signin_password_screen.dart';
import 'package:clot/features/authentication/presentation/screens/signin_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SigninScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SigninScreen());
    case SigninPasswordScreen.routeName:
      final emailId = settings.arguments as String;
      return MaterialPageRoute(
          builder: (_) => SigninPasswordScreen(
                emailId: emailId,
              ));
    default:
      return MaterialPageRoute(
        builder: (_) =>
            const Scaffold(body: Center(child: Text('Invalid Route'))),
      );
  }
}
