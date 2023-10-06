import 'package:appcolegio/constantes.dart';
import 'package:appcolegio/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'SplashScreen';
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.routeName, (route) => false);
    });
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Escuela',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: kTextWhiteColor,
                      fontSize: 50.0,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2),
                ),
                Text(
                  'Formar',
                  style: GoogleFonts.pattaya(
                      fontSize: 50,
                      fontStyle: FontStyle.italic,
                      color: kTextWhiteColor,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Container(
                width: 150,
                height: 150,
                child: Image(
                  image: AssetImage('assets/images/splash.png'),
                  fit: BoxFit.cover,
                )),
          ],
        ),
      ),
    );
  }
}
