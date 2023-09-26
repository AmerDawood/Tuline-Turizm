import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuline_turizm/screens/home/home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation:.0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.black,
              )),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: double.infinity,
          height: 166.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 21,
              right: 21,
              top: 21,
            ),
            child: Column(
                children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'تسجيل الدخول ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: Color(0xFF007DFB),
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (_){
                      //   return HomeScreen();
                      // }));
                    },
                    child: Container(
                      width: 95,
                      height: 33,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF18324B)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'دخول كزائر',
                          style: GoogleFonts.inter(
                            color: Color(0xFF18324B),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 169,
                      height: 44,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF18324B)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset("images/google.png",),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'جوجل',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                color: Color(0xFF18324B),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 169,
                      height: 44,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF18324B)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset("images/facebook2.png",),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'فيسبوك ',
                              textAlign: TextAlign.center,

                              style: GoogleFonts.inter(
                                color: Color(0xFF18324B),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
