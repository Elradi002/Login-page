//import 'dart:html';

//import 'dart:ui';

import 'package:android_apps/app/sign_in/sign_in_button.dart';
import 'package:android_apps/app/social_sign_in_button.dart';
//import 'package:android_apps/common_widgets/custom_raised_botton.dart';
//import 'package:android_apps/common_widgets/custom_raised_botton.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Padding(
      //color: Colors.yellow,
      //because we used padding
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Sign in',
            textAlign: TextAlign.center ,
            style: TextStyle(
              fontSize: 30.0 ,
              fontWeight: FontWeight.w600 ,
            ),
          ),
          const SizedBox(height: 48.0),
          
          SocialSignInButton(
            assetName: 'images/google-logo.png',
           //color: Colors.white,
           style: ElevatedButton.styleFrom(primary:Colors.white),
           text: 'Sign in with Google',
           textcolor: Colors.black87,
            onPressed: () {},
          ),
          const SizedBox(height: 8.0),

          SocialSignInButton(
            assetName: 'images/facebook-logo.png',
           //color: const Color.fromARGB(255, 20, 122, 206),
           style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 20, 122, 206)),
           text: 'Sign in with Facebook',
           textcolor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(height: 8.0),

          SignInButton(
           //color: const Color.fromARGB(255, 62, 173, 66),
           style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 62, 173, 66)),
           text: 'Sign in with Email',
           textcolor: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(height: 8.0),

          const Text(
            'or',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14 , color: Colors.black87),
            ),
          const SizedBox( height: 8.0),

          SignInButton(
           //color: Colors.lime,
           style: ElevatedButton.styleFrom(primary: Colors.lime),
           text: 'Go Anonymous',
           textcolor: Colors.black87,
            onPressed: () {},
          ),
          const SizedBox(height: 8.0),

        ],
      ),
    );
  }
}
