import 'package:flutter/material.dart';
import 'package:foodandbeverage/pages/sign_in_page.dart';
import 'package:foodandbeverage/pages/sign_up_page.dart';



final Map<String, WidgetBuilder> routes = {
  '/signinpage': (context) => SignInPage(), 
  '/signuppage' : (context) => SingUpPage()
};
