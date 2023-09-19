import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuline_turizm/screens/advertisements/advertisement_details.dart';
import 'package:tuline_turizm/screens/advertisements/advertisement_details2.dart';

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
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
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
                                    _scaffoldKey.currentState?.openDrawer();
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
                                // Image.asset('images/location.png',color: Color.fromRGBO(255, 123, 0, 1),height: 30,),
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
                  padding: const EdgeInsets.only(top: 170,right: 20,left: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        InkWell(
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
                                              Image.asset('images/star.png',color: Colors.white,height: 15,)
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
                        ),
                        InkWell(
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
                                              Image.asset('images/star.png',color: Colors.white,height: 15,)
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
                        ),
                        InkWell(
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
                                              Image.asset('images/star.png',color: Colors.white,height: 15,)
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
                        ),
                      ],
                    ),
                  ),
                ),
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
                  Text('استمتع بجمال طرابزون الخضراء',
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

            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Container(
                height: 141,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15,)
                ),

                child:Stack(
                  children: [
                    Image.asset('images/place.png',fit: BoxFit.cover,width: double.infinity,),

                  Positioned(
                    child:

                      Container(
                      height: 141,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5,),
                            Text('جولة سوميلا',
                            style: GoogleFonts.inter(
                              color: Color.fromRGBO(0, 125, 251, 1),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                            ),
                              textAlign: TextAlign.right,
                            ),
                            Spacer(),
                           Column(
                             children: [
                               Text(' ابتداءً من',
                                 style: GoogleFonts.inter(
                                   color: Color.fromRGBO(24, 50, 75, 1),
                                   fontSize: 18.sp,
                                   fontWeight: FontWeight.w600,
                                 ),
                                 textAlign: TextAlign.right,
                               ),
                               SizedBox(height: 2.h,),
                               Text('140 USD',
                                 style: GoogleFonts.inter(
                                   color: Color.fromRGBO(217, 63, 63, 1),
                                   fontSize: 18.sp,
                                   fontWeight: FontWeight.w600,
                                 ),
                                 textAlign: TextAlign.right,
                               ),
                             ],
                           ),
                            SizedBox(height: 5,),

                          ],
                        ),
                      ),
                    ),

                  )
                  ],
                ),
                clipBehavior: Clip.antiAlias,


              ),
            ),
            SizedBox(height: 20,),


            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Container(
                height: 141,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15,)
                ),

                child:Stack(
                  children: [
                    Image.asset('images/place.png',fit: BoxFit.cover,width: double.infinity,),

                    Positioned(
                      child:

                      Container(
                        height: 141,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5,),
                              Text('جولة سوميلا',
                                style: GoogleFonts.inter(
                                  color: Color.fromRGBO(0, 125, 251, 1),
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.right,
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text(' ابتداءً من',
                                    style: GoogleFonts.inter(
                                      color: Color.fromRGBO(24, 50, 75, 1),
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                  SizedBox(height: 2.h,),
                                  Text('140 USD',
                                    style: GoogleFonts.inter(
                                      color: Color.fromRGBO(217, 63, 63, 1),
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                              SizedBox(height: 5,),

                            ],
                          ),
                        ),
                      ),

                    )
                  ],
                ),
                clipBehavior: Clip.antiAlias,


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
