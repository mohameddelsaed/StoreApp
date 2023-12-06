import 'package:flutter/material.dart';
import 'package:store_app/Screens/forgot_password/compnents/body.dart';
import 'package:store_app/compnents/custom_appbar.dart';

import '../sign_in/sign_in_screen.dart';

class ForgotPasswordScreen  extends StatelessWidget {
  const ForgotPasswordScreen ({super.key});
static String routeName= "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Forgot Password',
        press:(){Navigator.popAndPushNamed(context, SignInScreen.routeName); },),
      body: const BodyForfot(),
    );
  }
}
