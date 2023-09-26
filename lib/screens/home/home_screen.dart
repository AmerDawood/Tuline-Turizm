import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuline_turizm/screens/advertisements/advertisement_details.dart';
import 'package:tuline_turizm/screens/advertisements/advertisement_details2.dart';
import 'package:tuline_turizm/screens/home/type_service/select_service_type.dart';

import '../widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(

          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 330,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color:  Color.fromRGBO(24, 50, 75, 1),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 20
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 40,),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Scaffold.of(context).openDrawer();
                                    },
                                  icon: Icon(Icons.menu,color: Colors.white,),
                                ),
                              ],
                            ),

                            SizedBox(height: 20,),
                            Row(
                              children: [
                                InkWell(
                                    onTap:(){
                                      _showDialog(context);
                                    },
                                    child: Icon(Icons.location_on_outlined,size: 30,color: Color.fromRGBO(255, 123, 0, 1))),
                                SizedBox(width: 5,),
                                InkWell(
                                  onTap: ()
                                  {
                                    _showDialog(context);
                                  },
                                  child: Text('من طرابزون',
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),


                          ],
                        ),
                      ),

                    ),


                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 170),
                  child: CarouselSlider(
                    // carouselController: _carouselController,
                    options: CarouselOptions(
                      autoPlayInterval: Duration(seconds: 4),
                      height: 340.0,
                      viewportFraction: 0.72,
                      autoPlay: true, // Set to false to handle auto-play manually
                      enableInfiniteScroll: true, // Set to false to stop at the last item
                      // onPageChanged: (index, _) {
                      //   setState(() {
                      //     _currentIndex = index;
                      //   });
                      // },
                    ),
                    // options: CarouselOptions(
                    //   autoPlayInterval: Duration(seconds: 2),
                    //   height: 300.0,autoPlay: true,viewportFraction: 0.65,),
                    items: [1,2,3,4,5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return InkWell(
                            onTap: (){
                              Navigator.pushReplacement(context,MaterialPageRoute(builder: (_){
                                return AdvertisementDetails();
                              }));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 300,
                                width: 230,
                                decoration: BoxDecoration(
                                  // color: Colors.red,
                                    borderRadius: BorderRadius.circular(25)
                                ),
                                child: Stack(

                                  children: [
                                    Image.asset('images/new_van.jpeg',fit: BoxFit.cover,height: double.infinity,),

                                    Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Row(
                                        children: [
                                          Spacer(),

                                          Container(
                                            height: 20,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(50),
                                                color: Color.fromRGBO(255, 123, 0,1)
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text('0',
                                                  style: GoogleFonts.inter(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                SizedBox(width: 3,),
                                                Icon(Icons.star,color: Colors.white,size: 16.sp,)
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Positioned(
                                        bottom: 0,
                                        child: Container(height: 70,width: 230,
                                          // color: Colors.red,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 12,right: 12),
                                            child: Row(
                                              children: [

                                                Text('استقبال وتوديع',
                                                  style: GoogleFonts.inter(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w700
                                                  ),
                                                ),
                                                Spacer(),
                                                Column(
                                                  children: [
                                                    SizedBox(height: 5,),
                                                    Text('ابتداءً من',
                                                      style: GoogleFonts.inter(
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w700
                                                      ),
                                                    ),
                                                    SizedBox(height: 6,),
                                                    Container(
                                                      height:30,
                                                      width: 60,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromRGBO(0, 125, 251, 1),
                                                        borderRadius: BorderRadius.circular(20),
                                                      ),
                                                      child: Center(
                                                        child: Text('45 usd',
                                                          style: GoogleFonts.inter(
                                                              color: Colors.white,
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w700
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ))




                                  ],
                                ),
                                clipBehavior: Clip.antiAlias,


                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                )


              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 34.w,
                top: 21.h,
              ),
              child: Row(
                children: [
                  Text('العروض',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                ],
              ),
            ),


            SizedBox(height: 10,),

           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                 InkWell(
                   onTap: (){
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                       return AdvertisementDetails2();
                     }));
                   },
                   child: Padding(
                     padding: const EdgeInsets.only(
                       left: 10,
                       right: 10,
                       top: 10,
                       bottom: 10,
                     ),
                     child: Container(
                       height: 235.h,
                       width: 370.w,
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(15.r),
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey.withOpacity(0.5),
                             spreadRadius: 1,
                             blurRadius: 2,
                             offset: Offset(0, 2), // changes position of shadow
                           ),
                         ],
                       ),
                       child: Image.asset('images/30.png'),
                     ),
                   ),
                 ),
                 InkWell(
                   onTap: (){
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                       return AdvertisementDetails2();
                     }));
                   },
                   child: Padding(
                     padding: const EdgeInsets.only(
                       left: 10,
                       right: 10,
                       top: 10,
                       bottom: 10,
                     ),
                     child: Container(
                       height: 235.h,
                       width: 370.w,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(15.r),
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey.withOpacity(0.5),
                             spreadRadius: 1,
                             blurRadius: 2,
                             offset: Offset(0, 2), // changes position of shadow
                           ),
                         ],
                       ),
                       child: Image.asset('images/30.png'),
                     ),
                   ),
                 ),


               ],
             ),
           ),


            Padding(
              padding: EdgeInsets.only(
                right: 34.w,
                top: 31.h,
              ),
              child: Row(
                children: [
                  Text('الأقسام',
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),


            SizedBox(height: 20,),

            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                  return SelectServiceType();
                }));
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'images/img.png',
                        width: double.infinity,
                        height: 110.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Center(
                          child: Text(
                            'الاستقبال والتوديع',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              shadows: [
                                Shadow(
                                  color: Color(0xFF000000),
                                  offset: Offset(1, 0),
                                  blurRadius: 15,
                                ),
                                Shadow(
                                  color: Color(0x3F000000),
                                  offset: Offset(1, -1),
                                  blurRadius: 4,
                                ),
                                Shadow(
                                  color: Color(0x3F000000),
                                  offset: Offset(2, 4),
                                  blurRadius: 4,
                                ),
                                Shadow(
                                  color: Color(0x3F000000),
                                  offset: Offset(-3, 4),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.right,
                          )),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'images/img.png',
                      width: double.infinity,
                      height: 110.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Center(
                        child: Text(
                          'الرحلات',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            shadows: [
                              Shadow(
                                color: Color(0xFF000000),
                                offset: Offset(1, 0),
                                blurRadius: 15,
                              ),
                              Shadow(
                                color: Color(0x3F000000),
                                offset: Offset(1, -1),
                                blurRadius: 4,
                              ),
                              Shadow(
                                color: Color(0x3F000000),
                                offset: Offset(2, 4),
                                blurRadius: 4,
                              ),
                              Shadow(
                                color: Color(0x3F000000),
                                offset: Offset(-3, 4),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.right,
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'images/img.png',
                      width: double.infinity,
                      height: 110.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Center(
                        child: Text(
                          'قسم جديد',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            shadows: [
                              Shadow(
                                color: Color(0xFF000000),
                                offset: Offset(1, 0),
                                blurRadius: 15,
                              ),
                              Shadow(
                                color: Color(0x3F000000),
                                offset: Offset(1, -1),
                                blurRadius: 4,
                              ),
                              Shadow(
                                color: Color(0x3F000000),
                                offset: Offset(2, 4),
                                blurRadius: 4,
                              ),
                              Shadow(
                                color: Color(0x3F000000),
                                offset: Offset(-3, 4),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.right,
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'images/img.png',
                      width: double.infinity,
                      height: 110.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Center(
                        child: Text(
                          'الخدمات',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            shadows: [
                              Shadow(
                                color: Color(0xFF000000),
                                offset: Offset(1, 0),
                                blurRadius: 15,
                              ),
                              Shadow(
                                color: Color(0x3F000000),
                                offset: Offset(1, -1),
                                blurRadius: 4,
                              ),
                              Shadow(
                                color: Color(0x3F000000),
                                offset: Offset(2, 4),
                                blurRadius: 4,
                              ),
                              Shadow(
                                color: Color(0x3F000000),
                                offset: Offset(-3, 4),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.right,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
  void _showDialog(BuildContext context) {
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
            height: 700,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, icon: Icon(Icons.close,color:  Color.fromRGBO(24, 50, 75, 1),)),
                    ],
                  ),
                ),
                
                
                Image.asset('images/map.png'),

                SizedBox(height: 20,),


                Text('حدد وجهتك السياحية ',
                  style: GoogleFonts.inter(
                    color: Color.fromRGBO(0, 125, 251, 1),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 15,),

                Text('المنطقة التي تحددها هي المنطقة التي تنطلق الخدمة منها  إلى منطقة أخرى أو إلى ذات المنطقة ',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 20,
                  ),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       border: Border.all(color: Colors.black)
                     ),
                    child: Center(
                      child: Text('تركيا',
                        style: GoogleFonts.inter(
                          color: Color.fromRGBO(0, 125, 251, 1),
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 7,
                            right: 7,
                            top: 20,
                          ),
                          child: Container(
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black)
                            ),
                            child: Center(
                              child: Text('إسطنبول',
                                style: GoogleFonts.inter(
                                  color: Color.fromRGBO(24, 50, 75, 1),
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 7,
                            right: 7,
                            top: 20,
                          ),
                          child: Container(
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black)
                            ),
                            child: Center(
                              child: Text('طربزون',
                                style: GoogleFonts.inter(
                                  color: Color.fromRGBO(24, 50, 75, 1),
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 7,
                            right: 7,
                            top: 20,
                          ),
                          child: Container(
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black)
                            ),
                            child: Center(
                              child: Text('انطاليا',
                                style: GoogleFonts.inter(
                                  color: Color.fromRGBO(24, 50, 75, 1),
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 7,
                            right: 7,
                            top: 10,
                          ),
                          child: Container(
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black)
                            ),
                            child: Center(
                              child: Text('مرميس',
                                style: GoogleFonts.inter(
                                  color: Color.fromRGBO(24, 50, 75, 1),
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 7,
                            right: 7,
                            top: 10,
                          ),
                          child: Container(
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black)
                            ),
                            child: Center(
                              child: Text('ألانيا',
                                style: GoogleFonts.inter(
                                  color: Color.fromRGBO(24, 50, 75, 1),
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 7,
                            right: 7,
                            top: 10,
                          ),
                          child: Container(
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black)
                            ),
                            child: Center(
                              child: Text('كاباوكيا',
                                style: GoogleFonts.inter(
                                  color: Color.fromRGBO(24, 50, 75, 1),
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 20,
                  ),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(245, 245, 255, 1),

                    ),
                    child: Center(
                      child: Text('تركيا',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 6,
                  ),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(245, 245, 255, 1),

                    ),
                    child: Center(
                      child: Text('أذريجان',
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),

                // SvgPicture.asset('images/map_svg.svg')
              ],
            ),
          ),
        );
      },
    );
  }
}
