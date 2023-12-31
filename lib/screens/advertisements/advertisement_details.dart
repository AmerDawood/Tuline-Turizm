import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuline_turizm/screens/home/app.dart';
import 'package:tuline_turizm/screens/home/home_screen.dart';

class AdvertisementDetails extends StatefulWidget {
  const AdvertisementDetails({Key? key}) : super(key: key);

  @override
  State<AdvertisementDetails> createState() => _AdvertisementDetailsState();
}

class _AdvertisementDetailsState extends State<AdvertisementDetails> {
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'تفاصيل العرض ',
            style: GoogleFonts.inter(
              color: Color.fromRGBO(24, 50, 75, 1),
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: InkWell(
            onTap: (){
              // Navigator.pushReplacement(context,MaterialPageRoute(builder: (_){
              //   return Home();
              // }));
              Navigator.push(context, MaterialPageRoute(builder: (_){
                return HomeScreen();
              }));
            },
            child: Icon(
              Icons.arrow_back,
              color: Color.fromRGBO(24, 50, 75, 1),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 225.h,
                width: double.infinity,
                child: Image.asset(
                  'images/adve_details.png',
                  fit: BoxFit.cover,
                ),
              ),
              // SizedBox(height: 25.h,),

              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'جولة سوميلا',
                    style: GoogleFonts.inter(
                      color: Color.fromRGBO(24, 50, 75, 1),
                      fontSize: 21.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '0',
                          style: GoogleFonts.inter(
                            color: Color.fromRGBO(24, 50, 75, 1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.star,color: Color(0xFFFF9F00),),
                        // child: Image.asset('images/star.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '(عدد التقيمات0)',
                          style: GoogleFonts.inter(
                            color: Color.fromRGBO(24, 50, 75, 1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Icon(Icons.pin_drop_outlined,size: 30.sp,),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'تنطلق الخدمة من طرابزون',
                          style: GoogleFonts.inter(
                            color: Color.fromRGBO(24, 50, 75, 1),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Row(
                      children: [
                        Icon(Icons.timer_outlined,size: 30.sp,),

                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          '8ساعات',
                          style: GoogleFonts.inter(
                            color: Color.fromRGBO(24, 50, 75, 1),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18, top: 30),
                    child: Row(
                      children: [
                        Icon(Icons.airplane_ticket_outlined,size: 30.sp,color: Color.fromRGBO(217, 63, 63, 1),),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'الإلغاء مجاني قبل يوم من موعد الخدمة ',
                          style: GoogleFonts.inter(
                            color: Color.fromRGBO(217, 63, 63, 1),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18, top: 30),
                    child: Row(
                      children: [
                        Icon(Icons.percent_outlined,size: 30.sp,color: Color.fromRGBO(0, 150, 76, 1),),

                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'خصم عند شرائك من مجموعة من المتاجر والمطاعم',
                          style: GoogleFonts.inter(
                            color: Color.fromRGBO(0, 150, 76, 1),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 20,
                width: double.infinity,
                color: Color.fromRGBO(245, 245, 253, 1),
              ),


              GestureDetector(
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
                          color: Colors.white,
                          child:Row(
                            children: [
                              SizedBox(width: 15,),
                              isExpanded? Icon(Icons.keyboard_arrow_up_sharp,color: Color.fromRGBO(0, 125, 251, 1),):  Icon(Icons.keyboard_arrow_down_sharp),
                              SizedBox(width: 15,),
                              Text(
                                'عرض جميع التقييمات',
                                style: GoogleFonts.inter(
                                  color:isExpanded ?  Color.fromRGBO(0, 125, 251, 1) : Colors.black,
                                  fontSize: 20.sp,
                                ),
                              ),
                            ],
                          ),
                        ),

                        if (isExpanded)
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16,
                              right: 16,
                              bottom: 16,
                            ),
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
                                                right: 25.w,
                                              ),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.star,color: Color(0xFFFF9F00),),
                                                      Icon(Icons.star,color: Color(0xFFFF9F00),),
                                                      Icon(Icons.star,color: Color(0xFFFF9F00),),
                                                      Icon(Icons.star,color: Color(0xFFFF9F00),),
                                                      Icon(Icons.star,color: Color(0xFFFF9F00),),
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
                                                        Icon(Icons.star,color: Colors.transparent,),
                                                        Icon(Icons.star,color: Color(0xFFFF9F00),),
                                                        Icon(Icons.star,color: Color(0xFFFF9F00),),
                                                        Icon(Icons.star,color: Color(0xFFFF9F00),),
                                                        Icon(Icons.star,color: Color(0xFFFF9F00),),
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
                                                        Icon(Icons.star,color:Colors.transparent),
                                                        Icon(Icons.star,color:Colors.transparent),

                                                        Icon(Icons.star,color: Color(0xFFFF9F00),),
                                                        Icon(Icons.star,color: Color(0xFFFF9F00),),
                                                        Icon(Icons.star,color: Color(0xFFFF9F00),),
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
                                                        Icon(Icons.star,color: Colors.transparent,),
                                                        Icon(Icons.star,color: Colors.transparent,),
                                                        Icon(Icons.star,color: Colors.transparent,),
                                                        Icon(Icons.star,color: Color(0xFFFF9F00),),
                                                        Icon(Icons.star,color: Color(0xFFFF9F00),),
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
                                                        Icon(Icons.star,color: Colors.transparent),
                                                        Icon(Icons.star,color: Colors.transparent),
                                                        Icon(Icons.star,color: Colors.transparent),
                                                        Icon(Icons.star,color: Colors.transparent),
                                                        Icon(Icons.star,color: Color(0xFFFF9F00),),
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
                                                  Icon(Icons.star_outline,color: Color(0xFFFF9F00),),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child:
                                                  Icon(Icons.star_outline,color: Color(0xFFFF9F00),),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child:
                                                  Icon(Icons.star_outline,color: Color(0xFFFF9F00),),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child:
                                                  Icon(Icons.star_outline,color: Color(0xFFFF9F00),),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child:
                                                  Icon(Icons.star_outline,color: Color(0xFFFF9F00),),
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


              Container(
                height: 20,
                width: double.infinity,
                color: Color.fromRGBO(245, 245, 253, 1),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Text(
                      'خدمات ذات صلة ',
                      style: GoogleFonts.inter(
                        color: Color.fromRGBO(24, 50, 75, 1),
                        fontSize: 21.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 250,
                        width: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade200,
                        ),
                        // child: Column(
                        //   children: [
                        //     Container(
                        //       height: 150,
                        //       width: double.infinity,
                        //       child: Image.asset('images/city.png',fit: BoxFit.cover,),
                        //     ),
                        //     Spacer(),
                        //     Container(
                        //       height: 100,
                        //       width: double.infinity,
                        //       decoration: BoxDecoration(
                        //           color: Colors.red,
                        //           borderRadius: BorderRadius.circular(10)),
                        //     ),
                        //   ],
                        // ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 250,
                        width: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade200,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(113, 47),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        child: Text(
                          'احجز الان ',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                    Spacer(),
                    Text(
                      'ابتداءً من ',
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      '140 USD',
                      style: GoogleFonts.inter(
                        color: Color.fromRGBO(0, 150, 76, 1),
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*

 */
