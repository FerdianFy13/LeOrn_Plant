import 'package:flutter/material.dart';
import 'package:leorn_plant/controller/core/color_core_controller.dart';
import 'package:leorn_plant/controller/validation/signin_validation_controller.dart';
import 'package:leorn_plant/model/validation/auth_services.dart';
import 'package:leorn_plant/view/core/navigationbar_view.dart';
import 'package:leorn_plant/view/validation/signUp_validation_view.dart';

class SignInValidation extends StatefulWidget {
  const SignInValidation({Key key}) : super(key: key);

  @override
  State<SignInValidation> createState() => _SignInValidationState();
}

class _SignInValidationState extends State<SignInValidation> {
  ColorCoreController colorController = ColorCoreController();
  SignInValidationController signinController = SignInValidationController();

  TextEditingController _emailController = TextEditingController(text: "");
  TextEditingController _passwordController = TextEditingController(text: "");

  void submit() {
    final email = _emailController.text;
    final password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      return;
    }
    Navigator.of(context).pop();
  }

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
                margin: EdgeInsets.fromLTRB(0, 35, 0, 35),
                child: Image.asset(
                  "assets/image/validation/validation1.png",
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
                      signinController.title1,
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
                      signinController.title2,
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
                margin: EdgeInsets.fromLTRB(35, 35, 35, 5),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _emailController,
                      onSubmitted: (value) => submit(),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal.shade800),
                        ),
                        labelText: signinController.title3,
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      // onSubmitted: (value) => submit(),
                      controller: _passwordController,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal.shade800),
                        ),
                        labelText: signinController.title4,
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
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
                          await AuthService.signIn(
                              _emailController.text, _passwordController.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return NavigationBarView();
                              },
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            signinController.button1,
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
                      signinController.button2,
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
                                  return SignUpValidation();
                                },
                              ),
                            );
                          },
                          child: Center(
                            child: Text(
                              signinController.button3,
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
