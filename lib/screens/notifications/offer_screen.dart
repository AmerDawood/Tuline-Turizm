import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "العروض والتنبيهات ",
            style: GoogleFonts.inter(
              color: Color(0xFF18324B),
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
            // style: TextStyle(color: Color(0xFF18324B)),
          ),
          backgroundColor: Colors.white,
          elevation: 1.0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.black,
                )),
          ],
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              top: 30.h,
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 97.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
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
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '16-09-2023',
                          style: GoogleFonts.inter(
                            color: Color(0xFF939CA5),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'عميلنا العزيز ,تم تأكيد حجزكم رقم #3877',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Color(0xFF18324B),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),

                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'نتمنى لكم رحلة جميلة وممتعه ',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Color(0xFF768CA1),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: double.infinity,
                  height: 97.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
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
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '16-09-2023',
                          style: GoogleFonts.inter(
                            color: Color(0xFF939CA5),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'عميلنا العزيز ,تم تأكيد حجزكم رقم #3877',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Color(0xFF18324B),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),

                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'نتمنى لكم رحلة جميلة وممتعه ',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Color(0xFF768CA1),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
