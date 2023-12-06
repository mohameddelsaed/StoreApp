import 'package:flutter/material.dart';
import 'package:store_app/Screens/Splash/splash_screen.dart';
import 'package:store_app/Screens/sign_in/compnents/body.dart';
import '../../compnents/custom_appbar.dart';

class SignInScreen extends StatelessWidget {
  static String routeName ="/sign_in";
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Sign In",
        press: (){   Navigator.popAndPushNamed(context, SplashScreen.routeName);},),
          body: const BodyS(),
    );
  }
}





