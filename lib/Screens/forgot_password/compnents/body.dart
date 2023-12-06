import 'package:flutter/material.dart';
import 'package:store_app/size_config.dart';
import 'forgot_pass_form.dart';


class BodyForfot extends StatelessWidget {
  const BodyForfot({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        physics:  const BouncingScrollPhysics(),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenWidth!*0.2,),
              Text("Forgot Password ",style: TextStyle(
                fontSize: getProportionateScreenWidth(28),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              const Text("Please enter your email and we will send \nyou a link to return to your account",
              textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenWidth!*0.1,),
              const ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

