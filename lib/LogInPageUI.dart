import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_text_field/main.dart';

class LogInUI extends StatelessWidget {
  Widget prefixWidget;
  String hintText;
  Widget suffixWidget;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldWidget(
                  prefixWidget: Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  hintText: "Email ID"),
              SizedBox(
                height: 20.0,
              ),
              TextFieldWidget(
                prefixWidget: Icon(
                  Icons.lock,
                  color: Colors.grey[400],
                ),
                hintText: "Password",
                suffixWidget: Icon(
                  Icons.remove_red_eye,
                  color: Colors.grey[400],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 45.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Align(alignment: Alignment.centerRight,child: Text("Forget Password?",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400))),
              SizedBox(
                height: 40.0,
              ),
              Text("or, you may continue with..", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400)),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OtherSignIn(image: "assets/google.png",),
                  SizedBox(width: 10.0,),
                  OtherSignIn(image: "assets/facebook.png",),
                  SizedBox(width: 10.0,),
                  OtherSignIn(image: "assets/apple-logo.png",),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OtherSignIn extends StatelessWidget {

  String image;

  OtherSignIn({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0,3), // changes position of shadow
            ),
          ],
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)
      ),
      child: Center(
        child: Image.asset(
          image,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
