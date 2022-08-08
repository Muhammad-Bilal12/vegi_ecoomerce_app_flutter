import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';

import 'google_auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(0.7),
              Colors.black.withOpacity(0.3),
            ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 400,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Sign in to continue",
                      style: TextStyle(color: Colors.white),
                    ),
                    Image.asset("assets/images/vegilogo.png", scale: 3),
                    IntrinsicWidth(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const GoogleAuthButton(
                            onPressed: signInWithGoogle,
                            style: AuthButtonStyle(
                              buttonColor: Colors.white,
                              textStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(height: 10),
                          AppleAuthButton(
                            onPressed: () {},
                            style: const AuthButtonStyle(
                              iconColor: Colors.black,
                              buttonColor: Colors.white,
                              textStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: const [
                        Text(
                          "By signing in to you are agreeing to our",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        Text(
                          "Terms and Privacy Policy",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
