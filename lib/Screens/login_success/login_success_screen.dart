import 'package:flutter/material.dart';
import 'package:store_app/Screens/login_success/compnents/body.dart';
import 'package:store_app/Screens/sign_in/sign_in_screen.dart';
import 'package:store_app/compnents/custom_appbar.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({super.key});
static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        caption: "",
        title: "Login Success",
        press:(){Navigator.pushNamed(context, SignInScreen.routeName);} ,
      ),
      body: const BodySuccess(),
    );
  }
}

