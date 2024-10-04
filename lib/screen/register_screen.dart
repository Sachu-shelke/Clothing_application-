// import 'package:flutter/material.dart';
// import 'package:projectcloth/widgets/common_button.dart';
// import 'package:projectcloth/widgets/common_textfield.dart';
// class Register_screen extends StatefulWidget {
//   const Register_screen({super.key});
//
//   @override
//   State<Register_screen> createState() => _Register_screenState();
// }
//
// class _Register_screenState extends State<Register_screen> {
//   TextEditingController textEditingController =TextEditingController();
//
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//
//     return Scaffold(
//       body:
//       SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   height: mediaQuery.size.height * 0.4,
//                   width: mediaQuery.size.width,
//                   decoration: BoxDecoration(
//                     color: Colors.purpleAccent,
//                     borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
//                   ),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
//                     // child: Image.asset("assets/cloaths/anime.png", fit: BoxFit.cover),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Column(
//                     children: [
//                       SizedBox(height: 20),
//                       Row(
//                         children: [
//                           IconButton(
//                             icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
//                             onPressed: () => Navigator.pop(context),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 60),
//                       Row(
//                         children: [
//                           Text("Get started with Geeta.", style: TextStyle(
//                                 fontSize: 30,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 20),
//                       Row(
//                         children: [
//                           Text("Already have an account? ", style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white),
//                           ),
//                           Text("Log in", style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 60),
//                       Row(
//                         children: [
//                           Text(
//                             "REGISTER",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 22,
//                                 color: Colors.white),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 37),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [Text("Your Name"),
//                       ],
//                     ),
//                     SizedBox(height: 15),
//                     CommonTextfield(
//                       controller: textEditingController,
//                     hintText: "Your Full Name",
//                     height: 50,
//                       prefixIcon: Icons.perm_identity,
//                       inColor: Colors.purple,
//                       offColor: Colors.greenAccent,
//                     ),
//
//                     SizedBox(height: 37),
//                     Row(
//                       children: [Text("Email Address"),
//                       ],
//                     ),
//                     SizedBox(height: 15),
//                     CommonTextfield(
//                       controller: textEditingController,
//                       hintText: "hlo@gmail.com",
//                       height: 50,
//                       prefixIcon: Icons.email_outlined,
//                       inColor: Colors.purple,
//                       offColor: Colors.greenAccent,
//                     ),
//
//                     SizedBox(height: 37),
//                     Row(
//                       children: [
//                         Text("Password"),
//                       ],
//                     ),
//                     SizedBox(height: 15),
//                     CommonTextfield(
//                       controller: textEditingController,
//                       hintText: "Your Full Name",
//                       height: 50,
//                       prefixIcon: Icons.lock_outline,
//                       inColor: Colors.purple,
//                       offColor: Colors.greenAccent,
//                     ),
//                     SizedBox(height: 20),
//                     CommonBoutton(
//                       height: 50,
//                       width: 350,
//                       hintText: "REGISTER",
//                       color: Colors.white,
//                       bcolor: Colors.purple,
//                     ),
//                     SizedBox(height: 10),
//                     Column(
//                       children: [
//                         Text(
//                           "By joining I agree to receive emails from Geeta.",
//                           style: TextStyle(fontSize: 16,color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
