import 'package:flutter/material.dart';
import 'package:store_app/Screens/complete_profile/complete_profile.dart';
import 'package:store_app/compnents/custom_appbar.dart';

import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
  static String routeName ="/Otp_Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        caption: "",
        title: "Otp Verification",
        press: (){Navigator.pushNamed(context, CompleteProfileScreen.routeName);},
      ),
      body: BodyOtp(),
    );
  }
}
