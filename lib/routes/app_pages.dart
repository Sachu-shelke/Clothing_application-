

import 'package:get/get.dart';
import 'package:projectcloth/bindings/buy_screen_binding.dart';
import 'package:projectcloth/bindings/cart_screen_binding.dart';
import 'package:projectcloth/bindings/failed_screen_binding.dart';
import 'package:projectcloth/bindings/favoriate_screen_binding.dart';
import 'package:projectcloth/bindings/find_screen_binding.dart';
import 'package:projectcloth/bindings/home_binding.dart';
import 'package:projectcloth/bindings/login_binding.dart';
import 'package:projectcloth/bindings/payment_screen_binding.dart';
import 'package:projectcloth/bindings/register_binding.dart';
import 'package:projectcloth/bindings/splash_binding.dart';
import 'package:projectcloth/bindings/sucess_screen_binding.dart';
import 'package:projectcloth/routes/route.dart';
import 'package:projectcloth/screen/buy_screen.dart';
import 'package:projectcloth/screen/cart_screen.dart';
import 'package:projectcloth/screen/favorite_screen.dart';
import 'package:projectcloth/screen/filed_screen.dart';
import 'package:projectcloth/screen/find_screen.dart';
import 'package:projectcloth/screen/home_screen.dart';
import 'package:projectcloth/screen/login_screen.dart';
import 'package:projectcloth/screen/mainpage.dart';
import 'package:projectcloth/screen/payment_screen.dart';
import 'package:projectcloth/screen/register_screen.dart';
import 'package:projectcloth/screen/splash_screen.dart';
import 'package:projectcloth/screen/sucessful_screen.dart';
import 'package:projectcloth/screen/user_login_screen.dart';
import 'package:projectcloth/screen/user_register_screen.dart';

class AppPage{
  static String INITIAL_ROUTE = Routes.LOGIN_SCREEN_ROUTE;
  static final pages =[
    GetPage(
        name: Routes.LOGIN_SCREEN_ROUTE,
        page: () => UserLoginScreen(),
        binding:LoginBinding()
    ),
    GetPage(
        name: Routes.HOME_SCREEN_ROUTE,
        page: () => HomeScreen(),
        binding: HomeBinding()
    ),
    GetPage(
        name: Routes.MAIN_SCREEN_ROUTE,
        page: () => Mainpage(),
      binding: HomeBinding(),
    ),
    GetPage(
        name: Routes.SPLASH_SCREEN_ROUTE,
        page: () => SplashScreen(),
        binding:SplashBinding() ,
    ),
    GetPage(
        name: Routes.REGISTER_SCREEN_ROUTE,
        page: () => UserRegisterScreen(),
        binding:RegisterBinding()
    ),
    GetPage(
        name: Routes.CART_SCREEN_ROUTE,
        page: () => Cart()
        ,binding:CartScreenBinding() ,
    ),
    GetPage(
        name: Routes.BUY_SCEEN_ROUTE,
        page: () =>BuyScreen(image: 'image', name: 'name', price: 'price',)
        ,binding: BuyScreenBinding(),
    ),GetPage(
        name: Routes.FAVORIATE_SCREEN_ROUTE,
        page: () =>FavoriteScreen()
        ,binding: FavoriateScreenBinding(),
    ),
    GetPage(
      name: Routes.SUCESSFUL_SCREEN_ROUTE,
      page: () => SucessfulScreen()
      ,binding:SucessScreenBinding() ,
    ),GetPage(
      name: Routes.PAYMENT_SCREEN_ROUTE,
      page: () => PaymentScreen()
      ,binding:PaymentScreenBinding() ,
    ),GetPage(
      name: Routes.FIND_SCREEN_ROUTE,
      page: () => FindScreen()
      ,binding:FindScreenBinding() ,
    ),GetPage(
      name: Routes.FAILED_SCREEN_ROUTE,
      page: () => FiledScreen()
      ,binding:FailedScreenBinding() ,
    ),










  ];
}