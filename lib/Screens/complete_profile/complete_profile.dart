import 'package:flutter/material.dart';
import 'package:store_app/Screens/complete_profile/components/body.dart';
import 'package:store_app/Screens/sign_up/sign_up_screen.dart';
import 'package:store_app/compnents/custom_appbar.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});
  static String routeName ="/complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title:"Sign Up" ,
        press: (){
          Navigator.pushNamed(context, SignUpScreen.routeName);
        },
      ),
      body: const BodyComplete(),

    );
  }
}

