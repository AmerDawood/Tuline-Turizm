import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class walletScreen extends StatefulWidget {
  const walletScreen({super.key});

  @override
  State<walletScreen> createState() => _walletScreenState();
}

class _walletScreenState extends State<walletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "المحفظة",
          style: TextStyle(color: Color(0xFF18324B)),
        ),
        backgroundColor: Colors.white,
        elevation: 1.0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context,'/app');
              },
              icon: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 15.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'رصيد معلق ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF18324B),
                        fontSize: 17,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    SizedBox(height: 6.h,),
                    Container(
                      width: 175,
                      height: 55,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFAE2E2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '0 USD',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFD93F3F),
                              fontSize: 23,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          Container(
                            width: 23,
                            height: 23,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 23,
                                    height: 23,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 23,
                                            height: 23,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFF914A),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(1)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 5,
                                          child: Container(
                                            width: 23,
                                            height: 18,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFD93F3F),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(1)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 11,
                                  top: 11,
                                  child: Container(
                                    width: 12,
                                    height: 7,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFFC396),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(1),
                                          bottomLeft: Radius.circular(1),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 12,
                                  top: 13,
                                  child: Container(
                                    width: 2,
                                    height: 2,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF18324B),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 25.0,
                ),
                Column(
                  children: [
                    Text(
                      'رصيد المحفضة ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF18324B),
                        fontSize: 17,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    SizedBox(height: 6.h,),
                    Container(
                      width: 175,
                      height: 55,
                      decoration: ShapeDecoration(
                        color: Color(0xFFEBF5FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '0 USD',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF007DFB),
                              fontSize: 23,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          Container(
                            width: 23,
                            height: 23,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 23,
                                    height: 23,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 23,
                                            height: 23,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFF9F00),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(1)),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 5,
                                          child: Container(
                                            width: 23,
                                            height: 18,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFF007DFB),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(1)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 11,
                                  top: 11,
                                  child: Container(
                                    width: 12,
                                    height: 7,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFC8E1FF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(1),
                                          bottomLeft: Radius.circular(1),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 12,
                                  top: 13,
                                  child: Container(
                                    width: 2,
                                    height: 2,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF18324B),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    'التاريخ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF18324B),
                      fontSize: 17,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  Text(
                    'نوع الحركة ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF18324B),
                      fontSize: 17,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  Text(
                    'المبلغ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF18324B),
                      fontSize: 17,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 139.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 26.h
                    ),
                    child: Image.asset('images/guide.png'),
                  ),

                  Text(
                    'الصفحة خالية من البيانات ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF7A8B9A),
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 260.h,
            ),
            InkWell(
              onTap: () {
                // print("object");
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Container(
                  width: double.infinity,
                  height: 45.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFF32C864),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 8,
                      left: 14,
                      right: 14,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          'إضافة المال إلى المحفظة',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
