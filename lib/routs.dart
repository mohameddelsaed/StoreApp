

import 'package:flutter/material.dart';
import 'package:store_app/Screens/Otp/otp_screen.dart';
import 'package:store_app/Screens/sign_in/sign_in_screen.dart';
import 'package:store_app/Screens/sign_up/sign_up_screen.dart';
import 'Screens/Splash/splash_screen.dart';
import 'Screens/complete_profile/complete_profile.dart';
import 'Screens/forgot_password/forgot_password_screen.dart';
import 'Screens/login_success/login_success_screen.dart';

final Map<String, WidgetBuilder> routes  = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName:(context) => const LoginSuccessScreen(),
  SignUpScreen.routeName:(context) => const SignUpScreen(),
  CompleteProfileScreen.routeName:(context) => const CompleteProfileScreen(),
  OtpScreen.routeName:(context)=>const OtpScreen(),
};