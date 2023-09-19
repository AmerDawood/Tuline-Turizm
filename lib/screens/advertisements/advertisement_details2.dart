import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuline_turizm/screens/home/app.dart';
import 'package:tuline_turizm/screens/home/home_screen.dart';

class AdvertisementDetails2 extends StatefulWidget {
  const AdvertisementDetails2({Key? key}) : super(key: key);

  @override
  State<AdvertisementDetails2> createState() => _AdvertisementDetails2State();
}

class _AdvertisementDetails2State extends State<AdvertisementDetails2> {
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
              SizedBox(height: 20,),
              Container(
                height: 175.h,
                width: double.infinity,
                child: Image.asset(
                  'images/30.png',
                  fit: BoxFit.cover,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: 11.w,
                  right: 11.w,
                  top: 40,
                ),
                child: Container(
                  // height: 1000,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(206, 224, 246, 1)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        children: [
                          Text('عرض اخر الصيف',
                            style: GoogleFonts.inter(
                              color: Color.fromRGBO(24, 50, 75, 1),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18,right: 18,top: 10,
                      ),
                      child: Row(
                        children: [
                          Text('GLOB30',
                            style: GoogleFonts.inter(
                              color: Color.fromRGBO(24, 50, 75, 1),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          Spacer(),

                          Container(
                            height: 47,
                            width: 74,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.blue,width: 2),
                            ),
                            child: Center(
                              child: Text('نسخ',
                                style: GoogleFonts.inter(
                                  color: Color.fromRGBO(24, 50, 75, 1),
                                  fontSize: 20.sp,
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
                        left: 18,
                        right: 18,
                        top: 18,
                      ),
                      child: Row(
                        children: [
                          Text('الشروط والأحكام ',
                            style: GoogleFonts.inter(
                              color: Color.fromRGBO(24, 50, 75, 1),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18,
                        right: 18,
                      ),
                      child: Text('لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق "ليتراسيت" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل "ألدوس بايج مايكر" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.',
                        style: GoogleFonts.inter(
                          color: Color.fromRGBO(24, 50, 75, 1),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          height: 1.5
                        ),
                      ),
                    ),

                    SizedBox(height: 40,),


                  ],
                ),
                ),

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
