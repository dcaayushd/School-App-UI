import 'package:flutter/material.dart';
import 'package:scholae/screens/login_screen.dart';
import 'package:scholae/screens/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  // All Screens will be registered here like manifest in Android.
  SplashScreen.routeName : (context) => SplashScreen(),
  LoginScreen.routeName : (context) => LoginScreen(),
};
