
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectcloth/screen/user_login_screen.dart';
import 'package:projectcloth/widgets/common_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
class UserRegisterScreen extends StatefulWidget {
  const UserRegisterScreen({super.key});

  @override
  State<UserRegisterScreen> createState() => _UserRegisterScreenState();
}

class _UserRegisterScreenState extends State<UserRegisterScreen> {

  TextEditingController NameController =TextEditingController();
  TextEditingController EmailController =TextEditingController();
  TextEditingController PasswordController =TextEditingController();

    FirebaseAuth auth =FirebaseAuth.instance;
    void registerUser()async{
      try{
        UserCredential userCredential =
        await auth.createUserWithEmailAndPassword(
            email: EmailController.text,
            password: PasswordController.text);
        ScaffoldMessenger.of(context).
        showSnackBar(
            SnackBar(
                content:Text('Registration Successful! welcome,${userCredential.user?.email}'),
            duration:Duration(seconds: 1),
        ),
        );
      }on FirebaseAuthException catch(error){
String message ='An error occurred';
if(error.code=='weak-password'){
  message='the password provided is too weak';
}
else if(error.code=='email_already_in_use'){
  message='the account already exists for that email';
}
ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registeration unsuccessful"),
duration: Duration(seconds: 1),));
      }
    }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: mediaQuery.size.height * 0.4,
                width: mediaQuery.size.width,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                  // child: Image.asset("assets/cloaths/anime.png", fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    Row(
                      children: [
                        Text("Get started with Geeta.", style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text("Already have an account? ", style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(UserLoginScreen());
                          },
                          child: Text("Log in", style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    Row(
                      children: [
                        Text(
                          "REGISTER",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 120,),
          Center(
            child: CommonTextfield(
              controller:NameController,
            helperText: '',
            hintText: "Enter your Name",
              prefixIcon: Icons.perm_identity,
            ),
          ),
          SizedBox(height: 50,),
          CommonTextfield(controller: EmailController,
            hintText: "Enter your Email",
            helperText: '',
            prefixIcon: Icons.email_outlined,
          ),
          SizedBox(height: 50,),
          CommonTextfield(
            helperText:'',
            controller: PasswordController,
            hintText: "Enter your Password",
            prefixIcon: Icons.lock_outline,
            obscureText: true,
          ),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){
            registerUser();
            },
              child: Text("REGISTER"))
        ],
      ),
    );
  }
  @override
  void dispose(){
      NameController.dispose();
      EmailController.dispose();
      PasswordController.dispose();
      super.dispose();
  }
}
