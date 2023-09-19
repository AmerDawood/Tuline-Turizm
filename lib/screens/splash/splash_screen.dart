import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double opacity = 0.0;
  double scale = 0.5; // Initial scale factor for the image

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        opacity = 1.0; // Set opacity to 1 to show the image with fade-in animation
        scale = 1.0; // Set the scale factor to 1 for the zoom-in animation
      });
      // After the animations, navigate to the '/app' route
      Future.delayed(Duration(seconds: 1), () {
        Navigator.pushReplacementNamed(context, '/app');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: opacity,
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: 300 * scale, // Adjust the width based on the scale factor
                height: 300 * scale, // Adjust the height based on the scale factor
                child: Image.asset('images/logo.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
