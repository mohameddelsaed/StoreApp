import 'package:flutter/material.dart';
import 'package:store_app/Screens/complete_profile/complete_profile.dart';

import '../../../compnents/custom_suffix_icon.dart';
import '../../../compnents/default_button.dart';
import '../../../compnents/form_error.dart';
import '../../../constants.dart';


class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? conformPassword;
  final List<String> errors =[];
  void addError({String? error}){
    if(errors.contains(error)){
      setState(() {
        errors.add(error!);
      });
    }
  }
  void removeError({String? error}){
    if(errors.contains(error)){
      setState(() {
        errors.add(error!);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            const SizedBox(height: 20,),
            buildPassFormField(),
            const SizedBox(height: 20,),
            buildRePassFormField(),
            FormError(errors: errors),
            const SizedBox(height: 30,),
            DefaultButton(
              text: ("Continue"),
              press:(){
                if(_formKey.currentState!.validate()){
                  Navigator.pushNamed(context,
                      CompleteProfileScreen.routeName);
                }
              } ,
            ),
          ],
        )
    );
  }

  TextFormField buildRePassFormField() {
    return  TextFormField(
      onSaved: (newValue) => password =newValue!,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kPassNullError)){
          setState(() {
            errors.remove(kPassNullError);
          });
        }else if(value.length > 8 && errors.contains(kShortPassError)
        ){
          setState(() {
            errors.remove(kPassNullError);
          });
        }
      },
      validator: (value){
        if(value!.isEmpty && !errors.contains(kPassNullError)){
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        }else if(value.length <8 && errors.contains(kShortPassError)
        ){
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
      obscureText: true,
      decoration: const InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-Enter Your Password",
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg",),
      ),
    );
  }
  TextFormField buildPassFormField() {
    return TextFormField(
      onSaved: (newValue) => password =newValue!,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kPassNullError)){
          setState(() {
            errors.remove(kPassNullError);
          });
        }else if(value.length > 8 && errors.contains(kShortPassError)
        ){
          setState(() {
            errors.remove(kPassNullError);
          });
        }
      },
      validator: (value){
        if(value!.isEmpty && !errors.contains(kPassNullError)){
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        }else if(value.length <8 && errors.contains(kShortPassError)
        ){
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
      obscureText: true,
      decoration: const InputDecoration(
        labelText: "Password",
        hintText: "Enter Your Password",
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg",),
      ),
    );
  }
  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue)=> email = newValue!,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kEmailNullError)){
          setState(() {
            errors.remove(kEmailNullError);
          });
        }else if(emailValidatorRegExp.hasMatch(value)&&
            errors.contains(kInvalidEmailError)){
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
      },
      validator: (value){
        if(value!.isEmpty && !errors.contains(kEmailNullError)){
          setState(() {
            errors.add(kEmailNullError);
          });
          return "" ;
        }else if(!emailValidatorRegExp.hasMatch(value)&&
            errors.contains(kInvalidEmailError)){
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Enter Your Email",
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg",),
      ),
    );
  }
}