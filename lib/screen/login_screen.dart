import 'package:flutter/material.dart';
import 'package:projectcloth/widgets/common_button.dart';
import 'package:projectcloth/widgets/common_textfield.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  TextEditingController textEditingController =TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isChecked = true;

  @override
  Widget build(BuildContext context) {
    var mediaquery =MediaQuery.of(context);
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: mediaquery.size.height * 0.5,
                  width: mediaquery.size.width * 1,
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                  ),
                  child: Image.asset("assets/images/anime.png"),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(Icons.arrow_back, size: 30, color: Colors.white),
                        ],
                      ),
                      SizedBox(height: 50),
                      Row(
                        children: [
                          Text(
                            "Welcome Back!",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "Yay! you're back! Thanks for shopping with us.\n"
                                "We have excited deals and promotions going \n"
                                "on, grab your pick now!",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                      SizedBox(height: 130),
                      Row(
                        children: [
                          Text(
                            "LOG IN",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w900, color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Email address"),
                      ],
                    ),
                    Row(
                      children: [
                        CommonTextfield(

                        controller: TextEditingController(),
                          helperText: '',
                          hintText: "hlo@geeta.com",
                          icon: Icons.email_outlined,
                          sIcon: Icons.warning_amber,
                          height: 100,
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    Row(
                      children: [
                        Text("Password"),
                      ],
                    ),
                    CommonTextfield(controller: TextEditingController(),
                      hintText: "Enter your password",
                      helperText: '',
                      icon: Icons.lock_outline,
                      height: 100,
                      inColor: Colors.black,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Checkbox(
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value!;
                            });
                          },
                        ),
                        Text("Remember me"),
                        Spacer(),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.purple, fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(18)
                      ),
                      child: CommonBoutton(
                        hintText: "LOG IN",
                        width: 350,
                        height: 50,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Not registered yet?"),
                        InkWell(
                            onTap: (){},
                            child: Text("Create an Account", style: TextStyle(color: Colors.purple))),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}