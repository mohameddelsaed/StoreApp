import 'package:flutter/material.dart';
import 'package:store_app/Screens/forgot_password/forgot_password_screen.dart';
import 'package:store_app/Screens/login_success/login_success_screen.dart';

import '../../../compnents/custom_suffix_icon.dart';
import '../../../compnents/default_button.dart';
import '../../../compnents/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';


class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  bool remember =false;
  final List<String > errors =[];

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(20),),
            buildPassFormField(),
            SizedBox(height: getProportionateScreenHeight(20),),
            FormError(errors: errors,),
            Row(children: [
              Checkbox(value: remember,
                  activeColor: KPrimaryColor,
                  onChanged: (value){
                    setState(() {
                      remember = value!;
                    });
                  }
              ),
              const Text("Remember me"),
              const Spacer(),
              GestureDetector(onTap: ()=> Navigator.pushNamed(context, ForgotPasswordScreen.routeName),
                  child: const Text("Forgot password?",style: TextStyle(decoration: TextDecoration.underline),))
            ],),
            SizedBox(height: getProportionateScreenHeight(20),),
            DefaultButton(
                text: "Continue", press: (){
              if(_formKey.currentState!.validate())
              {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            }),
          ],
        )
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