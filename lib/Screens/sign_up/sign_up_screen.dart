import 'package:flutter/material.dart';
import 'package:store_app/Screens/sign_in/sign_in_screen.dart';
import 'package:store_app/compnents/custom_appbar.dart';
import 'compnents/body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "SignUp",
        caption: "",
        press:(){Navigator.popAndPushNamed(context, SignInScreen.routeName);} ,
      ),
      body: const BodySignUp(),
    );
  }
}
