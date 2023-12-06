import 'package:flutter/material.dart';
import '../../../compnents/custom_suffix_icon.dart';
import '../../../compnents/default_button.dart';
import '../../../compnents/form_error.dart';
import '../../../compnents/no_text_name.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState> ();
  final List<String > errors =[];
  late String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
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
              }else if(!emailValidatorRegExp.hasMatch(value)&&
                  errors.contains(kInvalidEmailError)){
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Email",
              hintText: "Enter Your Email",
              suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg",),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30),),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenWidth!*0.1,),
          DefaultButton(text: "Continue", press: (){
            if(_formKey.currentState!.validate()){

            }
          }),
          SizedBox(height: SizeConfig.screenWidth!*0.2,),
          const NoAccountText(),
        ],
      ),
    );
  }
}
