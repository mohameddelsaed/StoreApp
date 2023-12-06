import 'package:flutter/material.dart';
import 'package:store_app/Screens/sign_up/sign_up_screen.dart';
import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account? ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
          child: Text("Sign Up ",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: KPrimaryColor,
            ),),
        ),
      ],);
  }
}