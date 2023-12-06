import 'package:flutter/material.dart';
import 'package:store_app/size_config.dart';
import '../../../constants.dart';
import 'complete_profile_form.dart';

class BodyComplete extends StatelessWidget {
  const BodyComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.02),
              Text("Complete Profile",style: headingStyle,),
              const Text("Complete your details or continue \nwith social media ",
                textAlign: TextAlign.center ,),
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
              const CompleteProfileForm(),
              const SizedBox(height: 20,),
              const Text("By continuing your confirm that you agree \nwith our term and condition",textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}




