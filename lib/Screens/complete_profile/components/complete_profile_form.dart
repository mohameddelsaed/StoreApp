import 'package:flutter/material.dart';
import 'package:store_app/Screens/Otp/otp_screen.dart';

import '../../../compnents/custom_suffix_icon.dart';
import '../../../compnents/default_button.dart';
import '../../../compnents/form_error.dart';
import '../../../constants.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final List <String> errors=[];
  final _formKey = GlobalKey<FormState>();
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          const SizedBox(height: 25,),
          buildLastNameFormField(),
          const SizedBox(height: 25,),
          buildPhoneNumberFormField(),
          const SizedBox(height: 25,),
          buildAddressFormField(),
          FormError(errors: errors),
          const SizedBox(height: 25,),
          DefaultButton(
              text: "Continue",
              press: (){
                if(_formKey.currentState!.validate()){
                  Navigator.pushNamed(context, OtpScreen.routeName);
                }
              }),
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      keyboardType: TextInputType.streetAddress,
      onSaved: (newValue)=> address = newValue!,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kAddressNullError)){
          setState(() {
            errors.remove(kAddressNullError);
          });
        }else if(value.length > 8 && errors.contains(kAddressNullError)
        ){
          setState(() {
            errors.remove(kAddressNullError);
          });
        }
      },
      validator: (value){
        if(value!.isEmpty && !errors.contains(kAddressNullError)){
          setState(() {
            errors.add(kAddressNullError);
          });
          return "";
        }else if(value.length <8 && errors.contains(kAddressNullError)
        ){
          setState(() {
            errors.add(kAddressNullError);
          });
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Address",
        hintText: "Enter Your Address",
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Location point.svg",),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue)=> phoneNumber = newValue!,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kPhoneNumberNullError)){
          setState(() {
            errors.remove(kPhoneNumberNullError);
          });
        }else if(value.length > 8 && errors.contains(kPhoneNumberNullError)
        ){
          setState(() {
            errors.remove(kPhoneNumberNullError);
          });
        }
      },
      validator: (value){
        if(value!.isEmpty && !errors.contains(kPhoneNumberNullError)){
          setState(() {
            errors.add(kPhoneNumberNullError);
          });
          return "";
        }else if(value.length <8 && errors.contains(kPhoneNumberNullError)
        ){
          setState(() {
            errors.add(kPhoneNumberNullError);
          });
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter Your Phone number",
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Phone.svg",),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue)=> firstName = newValue!,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kNamelNullError)){
          setState(() {
            errors.remove(kNamelNullError);
          });
        }else if(value.length > 8 && errors.contains(kNamelNullError)
        ){
          setState(() {
            errors.remove(kNamelNullError);
          });
        }
      },
      validator: (value){
        if(value!.isEmpty && !errors.contains(kNamelNullError)){
          setState(() {
            errors.add(kNamelNullError);
          });
          return "";
        }else if(value.length <8 && errors.contains(kNamelNullError)
        ){
          setState(() {
            errors.add(kNamelNullError);
          });
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "First Name",
        hintText: "Enter Your First Name",
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg",),
      ),
    );
  }






  TextFormField buildLastNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue)=> lastName = newValue!,
      decoration: const InputDecoration(
        labelText: "Last Name",
        hintText: "Enter Your Last Name",
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg",),
      ),
    );
  }
}