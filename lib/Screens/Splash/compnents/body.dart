import 'package:flutter/material.dart';
import 'package:store_app/Screens/Splash/compnents/splash_content.dart';
import 'package:store_app/Screens/sign_in/sign_in_screen.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/size_config.dart';
import '../../../compnents/default_button.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome To MIMI , Let's Shop! ",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": " We Help Connect With Store \nAround Egypt",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We Show The Easy Way To Shop \nJust Stay At Home With Us",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                physics: const BouncingScrollPhysics(),
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"].toString(),
                    text: splashData[index]["text"].toString()),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index)),
                    ),
                    const Spacer(flex: 2,),
                    DefaultButton(
                      text: "Continue",
                      press: (){
                        Navigator.popAndPushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }






  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: KAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? KPrimaryColor : const Color(0xffD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}


