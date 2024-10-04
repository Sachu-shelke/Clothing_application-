import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:projectcloth/screen/buy_screen.dart';
import 'package:projectcloth/screen/favorite_screen.dart';
import 'package:projectcloth/screen/filed_screen.dart';
import 'package:projectcloth/screen/find_screen.dart';
import 'package:projectcloth/screen/home_screen.dart';
import 'package:projectcloth/screen/login_screen.dart';
import 'package:projectcloth/screen/mainpage.dart';
import 'package:projectcloth/screen/payment_screen.dart';
import 'package:projectcloth/screen/register_screen.dart';
import 'package:projectcloth/screen/splash_screen.dart';
import 'package:projectcloth/screen/cart_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:projectcloth/screen/sucessful_screen.dart';
import 'package:projectcloth/screen/user_login_screen.dart';
import 'package:projectcloth/screen/user_register_screen.dart';
import 'firebase_options.dart';
void main() async{
// ...
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shopify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
