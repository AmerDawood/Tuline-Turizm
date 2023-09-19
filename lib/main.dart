import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuline_turizm/screens/advertisements/advertisement_details.dart';
import 'package:tuline_turizm/screens/advertisements/advertisement_details2.dart';
import 'package:tuline_turizm/screens/home/app.dart';
import 'package:tuline_turizm/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatefulWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   State<MyApp> createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
   @override
   Widget build(BuildContext context) {
     return ScreenUtilInit(
       designSize: const Size(390, 844),
       minTextAdapt: true,
       splitScreenMode: true,
       builder: (context, child) {
         return MaterialApp(
           // translations: LocaleString(),
           // locale: savedLocale != null ? Locale(savedLocale!) : null,
           // fallbackLocale: Locale('en', 'US'),
           debugShowCheckedModeBanner: false,
           initialRoute: '/splash_screen',
           routes: {
             '/app' : (context) => AppScreen(),
             '/splash_screen' : (context) => SplashScreen(),
             // '/advertisement_details' : (context) => AdvertisementDetails(),
             // '/advertisement_details2' : (context) => AdvertisementDetails2(),


           },
         );
       },
     );
   }
 }
