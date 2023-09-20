import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  bool isExpanded = false;

  void toggleContainerSize() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Expandable Container with Animation'),
        ),
        body: GestureDetector(
          onTap: toggleContainerSize,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            width: double.infinity,
            height: isExpanded ? 400 : 60,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.grey,
                    child:Row(
                      children: [
                        SizedBox(width: 5,),
                        Icon(Icons.ac_unit),
                      SizedBox(width: 5,),
                      Text(
                      'عرض جميع التقييمات',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      ),
                      ],
                    ),
                    ),

                  if (isExpanded)
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 42.w,
                                ),
                                child: Text(
                                  'عرض جميع التقييمات والتعليقات ',
                                  style: GoogleFonts.inter(
                                    color: Color.fromRGBO(0, 125, 251, 1),
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 200,
                                  // color: Colors.amber,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: 40.w,
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'images/star.png',
                                                  height: 20,
                                                ),
                                                Image.asset(
                                                  'images/star.png',
                                                  height: 20,
                                                ),
                                                Image.asset(
                                                  'images/star.png',
                                                  height: 20,
                                                ),
                                                Image.asset(
                                                  'images/star.png',
                                                  height: 20,
                                                ),
                                                Image.asset(
                                                  'images/star.png',
                                                  height: 20,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  '0',
                                                  style: GoogleFonts.inter(
                                                    color: Colors.black,
                                                    fontSize: 17,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                              ),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                    color: Colors.transparent,
                                                  ),
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                    // color: Colors.transparent,
                                                  ),
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                  ),
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                  ),
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    '0',
                                                    style: GoogleFonts.inter(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                              ),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                    color: Colors.transparent,
                                                  ),
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                    color: Colors.transparent,
                                                  ),
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                    // color: Colors.transparent,
                                                  ),
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                  ),
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    '0',
                                                    style: GoogleFonts.inter(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                              ),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                    color: Colors.transparent,
                                                  ),
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                    color: Colors.transparent,
                                                  ),
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                    color: Colors.transparent,
                                                  ),
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                    // color: Colors.transparent,
                                                  ),
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    '0',
                                                    style: GoogleFonts.inter(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                              ),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                    color: Colors.transparent,
                                                  ),
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                    color: Colors.transparent,
                                                  ),
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                    color: Colors.transparent,
                                                  ),
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                    color: Colors.transparent,
                                                  ),
                                                  Image.asset(
                                                    'images/star.png',
                                                    height: 20,
                                                    // color: Colors.transparent,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    '0',
                                                    style: GoogleFonts.inter(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 200,
                                  // color: Colors.red,

                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '0',
                                        style: GoogleFonts.inter(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child:
                                            Image.asset('images/star_outline.png'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child:
                                            Image.asset('images/star_outline.png'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child:
                                            Image.asset('images/star_outline.png'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child:
                                            Image.asset('images/star_outline.png'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child:
                                            Image.asset('images/star_outline.png'),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Text(
                                        '(عدد التقييمات 0)',
                                        style: GoogleFonts.inter(
                                          color: Color.fromRGBO(0, 125, 251, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'لا يوجد تعليقات  ',
                            style: GoogleFonts.inter(
                              color: Color.fromRGBO(0, 125, 251, 1),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
