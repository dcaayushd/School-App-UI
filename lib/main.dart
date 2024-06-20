import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scholae/constants.dart';
import 'package:scholae/routes.dart';
import 'package:scholae/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scholae',
      // We're using light theme for the app
      theme: ThemeData.light().copyWith(
        // Scaffold Default Color
        scaffoldBackgroundColor: kPrimaryColor,
        primaryColor: kPrimaryColor,
        // Use google fonts fpr our app, we will use sourceSansPro/sourceSans3
        textTheme: GoogleFonts.sourceSans3TextTheme(Theme.of(context).textTheme)
            .apply()
            .copyWith(
              bodyLarge: TextStyle(
                color: kTextWhiteColor,
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
              labelMedium: TextStyle(
                color: kTextWhiteColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
              ),
            ),
        // Input Decoration for all our app
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            fontSize: 15.0,
            color: kTextLightColor,
            height: 0.5,
          ),
          hintStyle: TextStyle(
            fontSize: 16.0,
            color: kTextBlackColor,
            height: 0.5,
          ),
          // We are using Underline Input Border not Outline
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kTextLightColor,
              width: 0.7,
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kTextLightColor,
            ),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kTextLightColor,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
      // Initial Route is Splash Screen which means first screen
      initialRoute: SplashScreen.routeName,
      // Define the routes file in order to access the routes any where all over the app.
      routes: routes,
    );
  }
}
