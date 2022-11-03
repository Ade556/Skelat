import 'dart:async';

import 'package:flutter/material.dart';
import 'package:halat_app/signup_screen/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignUp()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00244f),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 210),
              Image.asset(
                'assets/images/Vector.png',
              ),
              SizedBox(height: 80),
              Text(
                'Skelat Banking App.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Work Sans'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
