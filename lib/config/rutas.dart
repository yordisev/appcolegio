import 'package:appcolegio/screens/inicio.dart';
import 'package:appcolegio/screens/login.dart';
import 'package:appcolegio/screens/splash.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  InicioScreen.routeName: (context) => InicioScreen(),
};
