import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:product_app/screens/login_screen.dart';
import 'package:product_app/screens/register_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingSlider(
        centerBackground: true,
        imageVerticalOffset: 40,
        pageBackgroundColor: Colors.white,
        headerBackgroundColor: Colors.white,
        finishButtonText: 'Register',
        onFinish: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => RegistrationScreen(),
            ),
          );
        },
        finishButtonStyle: const FinishButtonStyle(
          backgroundColor: Colors.deepOrange,
        ),
        skipTextButton: const Text('Skip',style: TextStyle(color: Colors.deepOrange),),
        trailing: const Text(
          'Login',
          style: TextStyle(color: Colors.deepOrange),
        ),
        trailingFunction: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => LoginScreen(),
            ),
          );
        },
        background: [
          Image.asset(
            'assets/images/slide_1.png',
            height: 350,
            width: 350,
          ),
          Image.asset(
            'assets/images/slide_2.png',
            height: 300,
            width: 300,
          ),
        ],
        totalPage: 2,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 450,
                ),
                Text(
                  'This is Product App',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 450,
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
