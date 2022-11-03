import 'package:flutter/material.dart';
import 'package:halat_app/signup_screen/signup.dart';
import 'package:halat_app/splash_screen.dart';
import 'package:halat_app/widgets/logins.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff00244f),
      body: Column(
        children: [
          SizedBox(height: 23),
          Text(
            'Welcome to Skelat',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              fontFamily: 'Lato',
              color: Colors.white,
            ),
          ),
          SizedBox(height: 3),
          Image.asset('assets/images/f3cddb44-f99b-4ea7-872b-fd800730a957.png'),
          SizedBox(height: 25),
          Text(
            ' Banking Focused on You',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30, fontFamily: 'Lato', color: Colors.white),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SplashScreen()));
              },
              child: Container(
                width: 374,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Lato',
                      color: Color(0xff484848),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 90),
              Text(
                'Have an account?',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: Colors.white),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Logins()));
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
