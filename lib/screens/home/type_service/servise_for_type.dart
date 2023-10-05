

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuline_turizm/screens/home/home_screen.dart';

import '../../advertisements/advertisement_details.dart';

class ServiceForType extends StatefulWidget {
  const ServiceForType({super.key});

  @override
  State<ServiceForType> createState() => _ServiceForTypeState();
}

class _ServiceForTypeState extends State<ServiceForType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          ' اختيار المنطقة ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF18324B),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
              return HomeScreen();
            }));
          },
        ),
      ),
      body: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 7,
                      ),
                      child: Container(
                        width: 320,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ' ابحث من هنا .... ',
                            hintStyle: TextStyle(
                              color: Color(0xCC007DFB),
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                            filled: true,
                            fillColor: Color(0xFFEBF5FF),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        print('تم الضغط على الزر');
                      },
                      child: Container(
                        width: 60,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFFEBF5FF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.location_on_outlined,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
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
                      width: 400.w,
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
                                      Icon(Icons.star,color: Colors.white,size: 15.sp,)
                                      // Image.asset('images/star.png',color: Colors.white,height: 15,)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Positioned(
                              bottom: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 4,
                                      offset: Offset(0, 4), // changes position of shadow
                                    ),
                                  ],

                                  color: Colors.grey.shade50,


                                ),
                                height: 70,
                                width: 375.w,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 40,right: 40),
                                  child: Row(
                                    children: [
                                      Text('استقبال وتوديع',
                                        style: GoogleFonts.inter(
                                            color: Colors.black,
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
                                                color: Colors.black,
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
                      width: 400.w,
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
                                      Icon(Icons.star,color: Colors.white,size: 15.sp,)
                                      // Image.asset('images/star.png',color: Colors.white,height: 15,)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Positioned(
                              bottom: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 4,
                                      offset: Offset(0, 4), // changes position of shadow
                                    ),
                                  ],

                                  color: Colors.grey.shade50,


                                ),
                                height: 70,
                                width: 375.w,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 40,right: 40),
                                  child: Row(
                                    children: [
                                      Text('استقبال وتوديع',
                                        style: GoogleFonts.inter(
                                            color: Colors.black,
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
                                                color: Colors.black,
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
      ),
    );

  }
}
