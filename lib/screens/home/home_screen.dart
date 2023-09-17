import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 50, 75, 1),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },

          icon: Icon(Icons.menu,color: Colors.white,),
        ),
        actions: [
          Icon(Icons.ac_unit,color: Colors.blue,)
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 230,
                      width: double.infinity,
                      color:  Color.fromRGBO(24, 50, 75, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: InkWell(
                          onTap: ()
                          {
                            _showDialog(context);
                          },
                          child: Text('من طرابزون',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),


                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 90,right: 10,left: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 250,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(25)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 250,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(25)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 250,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(25)
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
                top: 41.h,
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
                 Padding(
                   padding: const EdgeInsets.only(
                     left: 10,
                     right: 10
                   ),
                   child: Container(
                     height: 235.h,
                     width: 370.w,
                     decoration: BoxDecoration(
                         color: Colors.amber,
                         borderRadius: BorderRadius.circular(15.r)
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(
                       left: 10,
                       right: 10
                   ),
                   child: Container(
                     height: 235.h,
                     width: 370.w,
                     decoration: BoxDecoration(
                         color: Colors.amber,
                         borderRadius: BorderRadius.circular(15.r)
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
                      fontSize: 25.sp,
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
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15,)
                ),
                child: Row(
                  children: [
                    Container(
                      height: 141,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                      ),

                      child: Column(
                        children: [
                          Text('جولة سوميلا',
                          style: GoogleFonts.inter(
                            color: Color.fromRGBO(0, 125, 251, 1),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                            textAlign: TextAlign.right,
                          ),
                          Spacer(),
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
                    ),
                  ],
                ),
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
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15,)
                ),
                child: Row(
                  children: [
                    Container(
                      height: 141,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                      ),

                      child: Column(
                        children: [
                          Text('جولة سوميلا',
                            style: GoogleFonts.inter(
                              color: Color.fromRGBO(0, 125, 251, 1),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          Spacer(),
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
                    ),
                  ],
                ),
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
                // Add your dialog content here
                // For example, you can use Text or any other widgets
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Dialog Content',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
