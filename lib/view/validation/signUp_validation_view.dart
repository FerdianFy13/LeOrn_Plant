// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/validation/signup_validation_controller.dart';
import 'package:leorn_plant/model/validation/auth_services.dart';
import 'package:leorn_plant/view/validation/signIn_validation_view.dart';

class SignUpValidation extends StatefulWidget {
  const SignUpValidation({Key key}) : super(key: key);

  @override
  State<SignUpValidation> createState() => _SignUpValidationState();
}

class _SignUpValidationState extends State<SignUpValidation> {
  ColorCoreController colorController = ColorCoreController();
  SignUpValidationController signupController = SignUpValidationController();

  TextEditingController _emailController = TextEditingController(text: "");
  TextEditingController _passwordController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorController.white2,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 35, 0, 20),
                child: Image.asset(
                  "assets/image/validation/validation2.png",
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // margin: EdgeInsets.only(top: 75),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      signupController.title1,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      signupController.title2,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: EdgeInsets.fromLTRB(35, 30, 35, 5),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal.shade800),
                        ),
                        labelText: signupController.title3,
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal.shade800),
                        ),
                        labelText: signupController.title4,
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal.shade800),
                        ),
                        labelText: signupController.title5,
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 45,
                  child: Container(
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        splashColor: Colors.teal.shade200,
                        onTap: () async {
                          // await AuthService.signUp(
                          //     _emailController.text, _passwordController.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignInValidation();
                              },
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            signupController.button1,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: colorController.green1,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      signupController.button2,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.teal.shade200,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SignInValidation();
                                },
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              signupController.button3,
                              style: TextStyle(
                                color: colorController.green1,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
