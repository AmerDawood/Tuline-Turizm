import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tuline_turizm/screens/advertisements/advertisement_details.dart';
import 'package:tuline_turizm/screens/advertisements/advertisement_details2.dart';
import 'package:tuline_turizm/screens/auth/signin_screen.dart';
import 'package:tuline_turizm/screens/favorite/favorite_screen.dart';
import 'package:tuline_turizm/screens/home/app.dart';
import 'package:tuline_turizm/screens/maps/location_details.dart';
import 'package:tuline_turizm/screens/maps/my_locations.dart';
import 'package:tuline_turizm/screens/notifications/offer_screen.dart';
import 'package:tuline_turizm/screens/settings/about/about_screen.dart';
import 'package:tuline_turizm/screens/settings/privacy/privacy_screen.dart';
import 'package:tuline_turizm/screens/splash/splash_screen.dart';
import 'package:tuline_turizm/screens/test.dart';
import 'package:tuline_turizm/screens/wallet/add_wallet.dart';
import 'package:tuline_turizm/screens/wallet/wallet_screen.dart';

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
             '/splash_screen' : (context) => SplashScreen(),
             '/app' : (context) => Home(),
             '/advertisement_details' : (context) => AdvertisementDetails(),
             '/advertisement_details2' : (context) => AdvertisementDetails2(),
             '/wallet_screen' : (context) => walletScreen(),
             '/notifications_screen' : (context) => NotificationsScreen(),
             '/about_screen' : (context) => AboutScreen(),
             '/signin_screen' : (context) => SignInScreen(),
             '/privacy_screen' : (context) => PrivacyScreen(),
             '/favorite_screen' : (context) => FavoriteScreen(),
             '/add_wallet' : (context) => AddWallet(),
             '/maps_screen' : (context) => LocationDetails(),
             '/my_locations' : (context) => MyLocations(),
             '/test' : (context) => Test3(),

           },
         );
       },
     );
   }
 }
