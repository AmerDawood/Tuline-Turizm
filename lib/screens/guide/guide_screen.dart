import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class GuideScreen extends StatefulWidget {
  const GuideScreen({Key? key}) : super(key: key);

  @override
  State<GuideScreen> createState() => _GuideScreenState();
}

class _GuideScreenState extends State<GuideScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('دليل',
          style: GoogleFonts.inter(
            color: Color.fromRGBO(24, 50, 75, 1),
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Icon(Icons.arrow_back,color: Color.fromRGBO(24, 50, 75, 1),),
      ),


      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 300.h,
              width: double.infinity,
              color: Color.fromRGBO(245, 245, 255, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Image.asset('images/guide.png'),
                  SizedBox(height: 15,),
                  Text('للحصول على كود الخصومات عليك أولا  شراء خدمة واحدة على الاقل ',
                  style: GoogleFonts.inter(
                    color: Color.fromRGBO(122, 139, 154,1),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),


            Padding(
              padding: EdgeInsets.only(
                top: 12.h,
                left: 9.w,
                right: 9.w,
              ),
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color.fromRGBO(0, 125, 251, 1)),
                ),
                child: Center(
                  child: Text('تركيا - اسطنبول',
                    style: GoogleFonts.inter(
                      color: Color.fromRGBO(0, 125, 251, 1),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 60.h,),

            Image.asset('images/guide.png'),
            SizedBox(height: 30,),

            Text('قريبا سنكون هنا ',
              style: GoogleFonts.inter(
                color: Color.fromRGBO(122, 139, 154,1),
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

          ],
        ),
      ),
    );
  }
}
