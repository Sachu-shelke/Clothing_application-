import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectcloth/screen/home_screen.dart';
import 'package:projectcloth/screen/register_screen.dart';
import 'package:projectcloth/screen/user_register_screen.dart';
import '../widgets/common_button.dart';
import '../widgets/common_textfield.dart';
import 'package:get/get.dart';

class UserLoginScreen extends StatefulWidget {
  const UserLoginScreen({super.key});

  @override
  State<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;

  final _formKey = GlobalKey<FormState>();
  bool _isChecked = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void loginUser() async {
    if (_formKey.currentState!.validate()) {
      try {
        UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Login Successful! Welcome, ${userCredential.user?.email}'),
            duration: Duration(seconds: 1),
          ),
        );
        Get.to(HomeScreen());

      } on FirebaseAuthException catch (error) {
        String message = 'Login unsuccessful';
        if (error.code == 'user-not-found') {
          message = 'No user found for that email.';
        } else if (error.code == 'wrong-password') {
          message = 'Wrong password provided.';
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message), duration: Duration(seconds: 1)),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: mediaQuery.size.height * 0.5,
                  width: mediaQuery.size.width,
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
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "Yay! You're back! Thanks for shopping with us.\n"
                                "We have exciting deals and promotions going\n"
                                "on, grab your pick now!",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 130),
                      Row(
                        children: [
                          Text(
                            "LOG IN",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
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
                    CommonTextfield(
                      helperText: '',
                      controller: emailController,
                      hintText: "hello@example.com",
                      prefixIcon: Icons.email_outlined,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 50),
                    Row(
                      children: [
                        Text("Password"),
                      ],
                    ),
                    CommonTextfield(
                      helperText: "",
                      controller: passwordController,
                      hintText: "Enter your password",
                      prefixIcon: Icons.lock_outline,
                      inColor: Colors.black,
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
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
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: InkWell(
                        onTap: loginUser,
                        child: Container(
                          width: 350,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text("LOG IN", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Not registered yet?"),
                        InkWell(
                          onTap: () {
                        Get.to(UserRegisterScreen());
                        },
                          child: Text("Create an Account", style: TextStyle(color: Colors.purple)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
