import 'package:android_apps/common_widgets/custom_raised_botton.dart';
import 'package:flutter/material.dart';

class SignInButton extends CustomRasedButton{

  SignInButton( {
    
      required String text ,
      required VoidCallback onPressed ,
      Color? textcolor ,
     //required Color color,
     required ButtonStyle style,

  }) : super(
        child:  Text(text , style: TextStyle( color: textcolor, fontSize: 15.0, ), ),
        onPressed:onPressed,
        style: style,
        //color: color
        );
  
}