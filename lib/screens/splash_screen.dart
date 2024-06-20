import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scholae/constants.dart';
import 'package:scholae/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  // Route name for our screen
  static String routeName = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    // Using Future to go from one screen to other via duration time
    Future.delayed(
      Duration(seconds: 3),
      () {
        /* No return when user is on the login Screen and press back, 
        it will not return the user to the splash screen */
        Navigator.pushNamedAndRemoveUntil(
            context, LoginScreen.routeName, (route) => false);
      },
    );

    // Scaffold color set to primary color in main.dart in our text theme
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Scholae',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: kTextWhiteColor,
                        fontSize: 50.0,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 2.0,
                      ),
                ),
                Text(
                  'High',
                  style: GoogleFonts.pattaya(
                    color: kTextWhiteColor,
                    fontSize: 50.0,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/images/splash.png',
              height: 150.0,
              width: 150.0,
            )
          ],
        ),
      ),
    );
  }
}
