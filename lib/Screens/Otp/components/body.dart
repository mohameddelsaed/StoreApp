import 'package:flutter/material.dart';
import 'package:store_app/size_config.dart';
import '../../../constants.dart';
import 'otp_form.dart';

class BodyOtp extends StatelessWidget {
  const BodyOtp({super.key});

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
              SizedBox(height: SizeConfig.screenHeight!*0.05,),
              Text("Otp Verification",style: headingStyle,),
              const Text("We sent your code to +20 106 951 *** "),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight!*0.15,),
              const OtpForm(),
              SizedBox(height: SizeConfig.screenHeight!*0.1,),
              GestureDetector(
                onTap: (){},
                  child:
                  const Text("Resend Otp Code",
                    style:
                    TextStyle(
                        decoration: TextDecoration.underline),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }




  Row buildTimer() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This code will expired in"),
            TweenAnimationBuilder(tween: Tween(begin: 30.0,end: 0),
                duration:const Duration(seconds: 30) ,
                builder: (context,value,child)=>
                    Text("00:${value.toInt()}",style: const TextStyle(color: KPrimaryColor),),
              onEnd: (){},
            ),
          ],
        );
  }
}

