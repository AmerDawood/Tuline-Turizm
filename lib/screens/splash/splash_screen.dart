import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // FbNotifications().requestNotificationPermissions();
    // Future.delayed(Duration(seconds: 3),(){
    //   Navigator.pushReplacementNamed(context, '/page_view_screen');
    //   // String routeName =UserPreferenceController().loggedIn ?'/app_screen':'/page_view_screen';
    //   // Navigator.pushReplacementNamed(context, routeName);
    // }
    // );

    Future.delayed(Duration(seconds: 3),(){
      // String routeName =UserPreferenceController().loggedIn ?'/app':'/page_view_screen';
      Navigator.pushReplacementNamed(context, '/app');
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Container(
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              child: Image.asset('images/logo.png'),
            ),
          ],
        ),
      ),
    );
  }
}