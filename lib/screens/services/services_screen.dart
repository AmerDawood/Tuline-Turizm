import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class ServicesScreen extends StatefulWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(24, 50, 75,1),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      top: 40,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                            // _scaffoldKey.currentState?.openDrawer();
                          },
                          icon: Icon(Icons.menu,color: Colors.white,),
                        ),


                        Text('الخدمات',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text('الخدمات',
                          style: TextStyle(
                            color: Color.fromRGBO(24, 50, 75,1),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: 18,
                      left: 8,
                      right: 8,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 44,
                            width: 165,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 159, 0, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text('استقبال /توديع المطار',
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 44,
                            width: 165,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text('رحلة يومية مع مجموعة',
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 44,
                            width: 165,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text('رحلة يومية مع مجموعة',
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      top: 20,
                    ),
                    child: Row(
                      children: [

                        Image.asset('images/plane.png'),
                        SizedBox(width: 10,),

                        Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 159, 0, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text('مطار طرابزون',
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                            // color: Color.fromRGBO(255, 159, 0, 1),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white,width: 2)
                          ),
                          child: Center(
                            child: Text(' مطار صبيحة',
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      top: 20,
                    ),
                    child: Row(
                      children: [

                        Image.asset('images/arrow.png'),
                        SizedBox(width: 10,),

                        Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 159, 0, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(' استقبال من المطار',
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                            // color: Color.fromRGBO(255, 159, 0, 1),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white,width: 2)
                          ),
                          child: Center(
                            child: Text('توديع الى المطار ',
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                top: 20,
              ),
              child: Row(
                children: [
                  InkWell(
                      onTap:(){
                        // _showDialog(context);
                      },
                      child: Icon(Icons.location_on_outlined,size: 30,color: Color.fromRGBO(255, 123, 0, 1))),
                  // Image.asset('images/location.png',color: Color.fromRGBO(255, 123, 0, 1),height: 30,),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: ()
                    {
                      // _showDialog(context);
                    },
                    child: Text('من طرابزون',
                      style: GoogleFonts.inter(
                        color:  Color.fromRGBO(24, 50, 75,1),
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(16)
                        ),
                        child: Image.asset('images/new_van.jpeg',fit: BoxFit.cover,),
                        clipBehavior: Clip.antiAlias,
                      ),
                    ),
                    SizedBox(width: 20,),


                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text('جولة سوميلا ',
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20,),

                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 159, 0,1),
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 3,),
                              Text('0',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 5,),
                              Image.asset('images/star.png',height: 20,color: Colors.white,)
                            ],
                          ),
                        ),
                      ],
                    ),

                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 20,
                          width: 50,
                          child: Icon(Icons.favorite,color: Colors.red,),
                        ),
                        SizedBox(height: 30,),
                        Text('ابتداءً من ',
                          style: GoogleFonts.inter(
                            color: Color.fromRGBO(0, 125, 251,1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('45 USD',
                          style: GoogleFonts.inter(
                            color: Color.fromRGBO(0, 125, 251,1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(16)
                        ),
                        child: Image.asset('images/new_van.jpeg',fit: BoxFit.cover,),
                        clipBehavior: Clip.antiAlias,
                      ),
                    ),
                    SizedBox(width: 20,),


                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text('جولة سوميلا ',
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20,),

                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 159, 0,1),
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 3,),
                              Text('0',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 5,),
                              Image.asset('images/star.png',height: 20,color: Colors.white,)
                            ],
                          ),
                        ),
                      ],
                    ),

                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 20,
                          width: 50,
                          child: Icon(Icons.favorite,color: Colors.red,),
                        ),
                        SizedBox(height: 30,),
                        Text('ابتداءً من ',
                          style: GoogleFonts.inter(
                            color: Color.fromRGBO(0, 125, 251,1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('45 USD',
                          style: GoogleFonts.inter(
                            color: Color.fromRGBO(0, 125, 251,1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(16)
                        ),
                        child: Image.asset('images/new_van.jpeg',fit: BoxFit.cover,),
                        clipBehavior: Clip.antiAlias,
                      ),
                    ),
                    SizedBox(width: 20,),


                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text('جولة سوميلا ',
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20,),

                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 159, 0,1),
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 3,),
                              Text('0',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 5,),
                              Image.asset('images/star.png',height: 20,color: Colors.white,)
                            ],
                          ),
                        ),
                      ],
                    ),

                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 20,
                          width: 50,
                          child: Icon(Icons.favorite,color: Colors.red,),
                        ),
                        SizedBox(height: 30,),
                        Text('ابتداءً من ',
                          style: GoogleFonts.inter(
                            color: Color.fromRGBO(0, 125, 251,1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('45 USD',
                          style: GoogleFonts.inter(
                            color: Color.fromRGBO(0, 125, 251,1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(16)
                        ),
                        child: Image.asset('images/new_van.jpeg',fit: BoxFit.cover,),
                        clipBehavior: Clip.antiAlias,
                      ),
                    ),
                    SizedBox(width: 20,),


                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text('جولة سوميلا ',
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20,),

                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 159, 0,1),
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 3,),
                              Text('0',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 5,),
                              Image.asset('images/star.png',height: 20,color: Colors.white,)
                            ],
                          ),
                        ),
                      ],
                    ),

                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 20,
                          width: 50,
                          child: Icon(Icons.favorite,color: Colors.red,),
                        ),
                        SizedBox(height: 30,),
                        Text('ابتداءً من ',
                          style: GoogleFonts.inter(
                            color: Color.fromRGBO(0, 125, 251,1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('45 USD',
                          style: GoogleFonts.inter(
                            color: Color.fromRGBO(0, 125, 251,1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}