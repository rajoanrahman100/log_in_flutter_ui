import 'package:beauty_textfield/beauty_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'LogInPageUI.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LogInUI(),
    );
  }
}

class MyHomePage extends StatelessWidget {


  Widget prefixWidget;
  String hintText;
  Widget suffixWidget;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextFieldWidget(prefixWidget: Icon(Icons.email,color: Colors.grey[400],), hintText: "Email ID"),

              SizedBox(height: 20.0,),

              TextFieldWidget(prefixWidget: Icon(Icons.lock,color: Colors.grey[400],), hintText: "Password",suffixWidget: Icon(Icons.remove_red_eye,color: Colors.grey[400],),),

              SizedBox(height: 20.0,),


              Container(
                height: 45.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.red,borderRadius: BorderRadius.circular(10.0)
                ),
                child: Center(
                  child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.w500),),
                ),
              ),
              SizedBox(height: 20.0,),

              Text("or,",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400)),

              Card(
                child: Container(
                  height: 40.0,
                  width:200.0,
                  decoration: BoxDecoration(
                      color: Colors.white,borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(flex: 1,child: Image.asset("assets/google.png",height: 20.0,)),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Text("Continue with google",style: TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.w500),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10.0,),


              Card(
                child: Container(
                  height: 40.0,
                  width:200.0,
                  decoration: BoxDecoration(
                      color: Colors.white,borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(flex: 1,child: Image.asset("assets/facebook.png",height: 20.0,)),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Text("Continue with facebook",style: TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.w500),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10.0,),


              Card(
                child: Container(
                  height: 40.0,
                  width:200.0,
                  decoration: BoxDecoration(
                      color: Colors.white,borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(flex: 1,child: Image.asset("assets/apple-logo.png",height: 20.0,)),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Text("Continue with apple id",style: TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.w500),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key key,
     this.prefixWidget,
     this.suffixWidget,
     this.hintText,
  }) : super(key: key);

  final Widget prefixWidget;
  final Widget suffixWidget;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: Center(
        child: TextFormField(
          cursorColor: Colors.black,
          decoration: new InputDecoration(
              border: OutlineInputBorder(
                borderSide:BorderSide(color: Colors.black12,width: 2)
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide:BorderSide(color: Colors.black12,width: 2)
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide:BorderSide(color: Colors.black12,width: 2)
              ),
              prefixIcon: prefixWidget,
              suffixIcon: suffixWidget,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
              hintText: hintText),
        ),
      ),
    );
  }
}

