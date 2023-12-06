import 'package:flutter/material.dart';
import 'package:store_app/Screens/sign_up/compnents/sign_up_form.dart';
import 'package:store_app/size_config.dart';
import '../../../compnents/social_card.dart';
import '../../../constants.dart';


class BodySignUp extends StatelessWidget {
  const BodySignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight!*0.02),
              Text("Register Account",style: headingStyle,),
              const Text("Complete your details or continue \nwith social media ",
                textAlign: TextAlign.center ,),
              SizedBox(height: SizeConfig.screenHeight!*0.07),
              const SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight!*0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(icon: "assets/icons/facebook-2.svg", press: () {},),
                  SocialCard(icon: "assets/icons/google-icon.svg",press: (){},),
                  SocialCard(icon: "assets/icons/twitter.svg",press: (){},)
                ],
              ),
              const SizedBox(height: 20,),
              const Text("By continuing your confirm that you agree \nwith our term and condition",textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}






