import 'package:flutter/material.dart';
import 'package:store_app/size_config.dart';

// ignore: constant_identifier_names
const KPrimaryColor = Color(0xffff7643);
// ignore: constant_identifier_names
const KPrimaryLightColor = Color(0xffFFECDF);
// ignore: constant_identifier_names
const KPrimaryColorGardinet = LinearGradient(
    begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xffFFA53E),Color(0xffFF7643)],
);
  // ignore: constant_identifier_names
  const KSecondryColor = Color(0xff979797);
  // ignore: constant_identifier_names
  const KTextColor = Color(0xff757575);
  // ignore: constant_identifier_names
  const KAnimationDuration = Duration(milliseconds: 200);

  final headingStyle = TextStyle(
    fontSize: getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold,
    height: 1.5,
    color: Colors.black
  );


  //form error
final RegExp emailValidatorRegExp =
RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";


final otpInputDecoration =InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
    enabledBorder: outlineInputBorder(),
  focusedBorder: const OutlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: const BorderSide(color: KTextColor)
  );
}