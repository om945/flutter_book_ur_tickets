import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_book_ur_tickets/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    animation = CurvedAnimation(
        parent: animationController,
        curve: Curves.bounceOut,
        reverseCurve: Curves.bounceInOut);
    animationController.forward();
    super.initState();

    Timer(
        const Duration(milliseconds: 2500),
        () => Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => Login(),
            )));
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Material(
      child: Scaffold(
          body: Container(
        // margin: EdgeInsets.only(top: 5),
        height: MediaQuery.of(context)
            .size
            .height, // Set the height to the screen height
        width: MediaQuery.of(context)
            .size
            .width, // Set the width to the screen width
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 0.5,
            alignment: Alignment.bottomCenter,
            image: AssetImage('assets/files/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ScaleTransition(
            scale: animation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BOOK',
                  style: TextStyle(
                    shadows: [Shadow(color: Colors.white, blurRadius: 6)],
                    fontSize: 70,
                    fontFamily:
                        GoogleFonts.bebasNeue(color: Colors.black).fontFamily,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('UR Tickets',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: GoogleFonts.dmSerifText().fontFamily,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.overline)),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
