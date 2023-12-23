import 'package:android_apps/common_widgets/custom_raised_botton.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialSignInButton extends CustomRasedButton {
  SocialSignInButton({
    required String assetName,
    required String text,
    required VoidCallback onPressed,
     Color? textcolor,
    //required Color color,
    required ButtonStyle style,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(assetName),
              //const Text('Sign in with Google', style: TextStyle(color: Colors.black),),
              Text(
                text,
                style: TextStyle(color: textcolor, fontSize: 15.0),
              ),
              Opacity(
                opacity: 0.0,
                child: Image.asset(assetName),
              ),
            ],
          ),
          onPressed:onPressed,
          style: style,
          //color: color
        );
}
