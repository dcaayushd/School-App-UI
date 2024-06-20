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
        textTheme: GoogleFonts.sourceSans3TextTheme(
          Theme.of(context).textTheme.apply().copyWith(
                bodyLarge: TextStyle(
                  color: kTextWhiteColor,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  //   fontStyle: FontStyle.italic,
                  //   letterSpacing: 2.0,
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
