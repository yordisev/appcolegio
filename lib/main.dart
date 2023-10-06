import 'package:appcolegio/config/rutas.dart';
import 'package:appcolegio/constantes.dart';
import 'package:appcolegio/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Colegio Primaria',
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          primaryColor: kPrimaryColor,
          appBarTheme: AppBarTheme(color: kPrimaryColor, elevation: 0),
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context)
              .textTheme
              .apply()
              .copyWith(
                  bodyLarge: TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold)))),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
