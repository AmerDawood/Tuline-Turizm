import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuline_turizm/screens/favorite/favorite_screen.dart';

import '../auth/signin_screen.dart';


class CustomDrawer extends StatefulWidget {
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>  {
  String selectedLanguage = 'لغة التطبيق العربية';

  bool isExpanded = false;

  void toggleContainerVisibility() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }


  // Default language

  Widget _buildLanguageOption(String language) {
    return ListTile(
      title: Text(language),
      onTap: () {
        setState(() {
          selectedLanguage = language;
        });
        Navigator.pop(context); // Close the dialog when a language is selected
      },
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200.h,
          decoration: BoxDecoration(),
          // Customize the content of your bottom sheet here
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
                onTap: () {
                  // Handle the Share action here
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.copy),
                title: Text('Copy Link'),
                onTap: () {
                  // Handle the Copy action here
                  Navigator.pop(context);
                },
              ),
              // Add more ListTiles for additional actions
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(

      textDirection: TextDirection.ltr,
      child: Drawer(
        width: 300.w,
        backgroundColor: Color.fromRGBO(24, 50, 75, 1),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 60.h,
              ),
          Column(
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(60)
                  ),
                  child: Image.asset('images/woman.png',fit: BoxFit.cover,),
                  clipBehavior: Clip.antiAlias,
                ),


              ],
            ),
              SizedBox(height: 10,),
              Text('Ali ahmad',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),

              SizedBox(height: 10,),
              InkWell(
               onTap: (){
                 _showLoginDialog(context);
               },
                child: Container(
                  height: 30.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Center(
                    child: Text('تسجيل الدخول',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              // Container(
              //   height: 30.h,
              //   width: 120.w,
              //   decoration: BoxDecoration(
              //       color: Colors.blue,
              //       borderRadius: BorderRadius.circular(40)
              //   ),
              //   child: Center(
              //     child: Text('USD  0: المحفظة',
              //     style: GoogleFonts.inter(
              //       color: Colors.white,
              //     ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 20,),


              GestureDetector(
                onTap: toggleContainerVisibility,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 18,
                      right: 18,
                    ),
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            'اللغة / Language',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          AnimatedSwitcher(
                            duration: Duration(milliseconds: 500),
                            child: isExpanded
                                ? Icon(
                              Icons.keyboard_arrow_up_sharp,
                              color: Color.fromRGBO(255, 159, 0, 1),
                              key: Key('up'),
                            )
                                : Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: Colors.white,
                              key: Key('down'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: isExpanded ? 50 : 0,
                width: double.infinity,
                child: Row(
                  children: [
                    Spacer(),
                    Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        // color: Color.fromRGBO(255, 159, 0, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text('English',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 159, 0, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text('العربية',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),

                  ],
                ),

              ),


              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 7,
                  bottom: 20,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),

              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 18,
                    right: 18,
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Text('العملة',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 7,
                  bottom: 20,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),

              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 18,
                    right: 18,
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Text('المناطق السياحية',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        // Image.asset('images/arrow_under.png')
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 7,
                  bottom: 20,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),

              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 18,
                    right: 18,
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, '/wallet_screen');
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Text('المحفظة',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.account_balance_wallet_outlined,color: Colors.white,)
                          // Image.asset('images/wallet.png',color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 7,
                  bottom: 20,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),

              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 18,
                    right: 18,
                  ),
                  child: InkWell(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (_){
                      //   return FavoriteScreen();
                      // }));
                      // Navigator.pushReplacementNamed(context, '/favorite_screen');
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Text('المفضلة',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.favorite_border_rounded,color: Colors.white,)
                          // Image.asset('images/love.png',color: Colors.white)

                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 7,
                  bottom: 20,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),

              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 18,
                    right: 18,
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, '/notifications_screen');
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Text('العروض والتنبيهات',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),

                          Spacer(),
                          Icon(Icons.notifications_none_sharp,color: Colors.white,)
                          // Image.asset('images/notification.png',color: Colors.white,height: 25,)

                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 7,
                  bottom: 20,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),

              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 18,
                    right: 18,
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Text('رحلاتي',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        // Image.asset('images/arrow_under.png')
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 7,
                  bottom: 20,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),

              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 18,
                    right: 18,
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, '/privacy_screen');
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Text('اتفاقية الاستخدام وسياسة الخصوصية ',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          // Image.asset('images/arrow_under.png')
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 7,
                  bottom: 20,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),

              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 18,
                    right: 18,
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, '/about_screen');
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Text('عن التطبيق',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          // Image.asset('images/arrow_under.png')
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 7,
                  bottom: 20,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),

              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 18,
                    right: 18,
                  ),
                  child: InkWell(
                    onTap: (){
                      // Navigator.pushReplacementNamed(context, '/privacy_screen');
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Text('شارك التطبيق ',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          // Image.asset('images/arrow_under.png')
                        ],
                      ),
                    ),
                  ),
                ),
              ),



              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 7,
                  bottom: 20,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),

              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 18,
                    right: 18,
                  ),
                  child: InkWell(
                    onTap: (){
                      _showLogoutDialog(context);
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Text('تسجيل خروج',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Spacer(),
                          // Image.asset('images/arrow_under.png')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Image.asset('images/instagram.png'),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(Icons.call,size: 30,),
                      // child: Image.asset('images/phone.png'),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(Icons.facebook_outlined,size: 40,),
                      // child: Image.asset('images/facebook.png',color: Color.fromRGBO(24, 50, 75, 1),),
                    ),
                  ),
                ],
              ),



            ],
          )
            ],
          ),
        ),
      ),
    );
  }

  final List<Map<String, dynamic>> locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'العربية', 'locale': Locale('ar', 'AR')},
    // {'name': 'हिंदी', 'locale': Locale('hi', 'IN')},
  ];

  // void updateLanguage(Locale locale) async {
  //   Get.back();
  //   final sharedPreferences = await SharedPreferences.getInstance();
  //   sharedPreferences.setString('lang', locale.languageCode);
  //   Get.updateLocale(locale);
  // }
  //
  // void buildLanguageDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (builder) {
  //       return AlertDialog(
  //         title: Text('choselanguage'.tr),
  //         content: Container(
  //           width: double.maxFinite,
  //           child: ListView.separated(
  //             shrinkWrap: true,
  //             itemBuilder: (context, index) {
  //               return Padding(
  //                 padding: const EdgeInsets.all(8.0),
  //                 child: GestureDetector(
  //                   child: Text(locale[index]['name']),
  //                   onTap: () {
  //                     print(locale[index]['name']);
  //                     updateLanguage(locale[index]['locale']);
  //                   },
  //                 ),
  //               );
  //             },
  //             separatorBuilder: (context, index) {
  //               return Divider(
  //                 color: Colors.black,
  //               );
  //             },
  //             itemCount: locale.length,
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
}

class ListTileWidget extends StatelessWidget {
  final String text;
  final Function function;

  ListTileWidget({
    required this.function,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        height: 36,
        child: Text(
          text,
          //   style: TextStyle(
          //   color: Colors.white,
          //   fontSize: 16,
          //   fontWeight: FontWeight.w700,
          // ),
          style: GoogleFonts.tajawal(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

void _showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: Container(
          width: double.infinity,
          height: 300,
          decoration: ShapeDecoration(
            color: Colors.white,
            // color: const Color.fromARGB(255, 243, 99, 99),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/5.png"),
                  SizedBox(
                    height: 17.0,
                  ),
                  Text(
                    'تسجيل خروج ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF18324B),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'هل تريد حقا تسجيل الخروج',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF314152),
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,top: 20,
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            print('تم النقر على الزر');
                          },
                          child: Container(
                            width: 147.34,
                            height: 42.96,
                            decoration: BoxDecoration(
                              color: Color(0xFF007DFB),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Center(
                              child: Text(
                                'تسجيل خروج',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 147.34,
                            height: 42.96,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(30.0),
                              border: Border.all(
                                width: 1,
                                color: Color(0xFF9FB4C7),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'لا',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF007DFB),
                                  fontSize: 15,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
          ),
        )
      );
    },
  );
}

void _showLoginDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          child: Container(
            width: double.infinity,
            height: 300,
            decoration: ShapeDecoration(
              color: Colors.white,
              // color: const Color.fromARGB(255, 243, 99, 99),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("images/10.png"),
                    SizedBox(
                      height: 17.0,
                    ),
                    Text(
                      'تسجيل الدخول',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF18324B),
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'يرجى تسجيل الدخول',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF314152),
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,top: 20,
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                               return SignInScreen();
                             }));
                            },
                            child: Container(
                              width: 147.34,
                              height: 42.96,
                              decoration: BoxDecoration(
                                color: Color(0xFF007DFB),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Center(
                                child: Text(
                                  'تسجيل الدخول',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 147.34,
                              height: 42.96,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xFF9FB4C7),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'لا',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF007DFB),
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
          )
      );
    },
  );
}