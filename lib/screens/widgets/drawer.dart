import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomDrawer extends StatefulWidget {
  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>  {
  String selectedLanguage = 'لغة التطبيق العربية';

  // Default language

  Widget _buildLanguageOption(String language) {
    return ListTile(
      title: Text(language),
      onTap: () {
        setState(() {
          selectedLanguage = language;
        });
        Navigator.pop(context); // Close the dialog when a language is selected
      },
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200.h,
          decoration: BoxDecoration(),
          // Customize the content of your bottom sheet here
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
                onTap: () {
                  // Handle the Share action here
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.copy),
                title: Text('Copy Link'),
                onTap: () {
                  // Handle the Copy action here
                  Navigator.pop(context);
                },
              ),
              // Add more ListTiles for additional actions
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(

      textDirection: TextDirection.ltr,
      child: Drawer(
        width: 300.w,
        backgroundColor: Color.fromRGBO(24, 50, 75, 1),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 60.h,
              ),
          Column(
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(60)
                  ),
                  child: Image.asset('images/woman.png',fit: BoxFit.cover,),
                  clipBehavior: Clip.antiAlias,
                ),


              ],
            ),
              SizedBox(height: 20,),
              Text('Ali ahmad',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),

              SizedBox(height: 20,),


              Directionality(
               textDirection: TextDirection.rtl,
                child: ListTile(
                  // leading:Icon(Icons.ac_unit),
                  title: Text('اللغة / Language',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_circle_down_sharp,color: Colors.white,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  // leading:Icon(Icons.ac_unit),
                  title: Text('العملة',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_circle_down_sharp,color: Colors.white,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  // leading:Icon(Icons.ac_unit),
                  title: Text('المناطق السياحية',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  // leading:Icon(Icons.ac_unit),
                  title: Text('المحفظة',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  // leading:Icon(Icons.ac_unit),
                  title: Text('المفضلة',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  // leading:Icon(Icons.ac_unit),
                  title: Text('العروض والتنبيهات',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  // leading:Icon(Icons.ac_unit),
                  title: Text('رحلاتي',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  // leading:Icon(Icons.ac_unit),
                  title: Text('اتفاقية الاستخدام وسياسة الخصوصية ',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  // leading:Icon(Icons.ac_unit),
                  title: Text('عن التطبيق',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  // leading:Icon(Icons.ac_unit),
                  title: Text('تسجيل خروج',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          )
            ],
          ),
        ),
      ),
    );
  }

  final List<Map<String, dynamic>> locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'العربية', 'locale': Locale('ar', 'AR')},
    // {'name': 'हिंदी', 'locale': Locale('hi', 'IN')},
  ];

  // void updateLanguage(Locale locale) async {
  //   Get.back();
  //   final sharedPreferences = await SharedPreferences.getInstance();
  //   sharedPreferences.setString('lang', locale.languageCode);
  //   Get.updateLocale(locale);
  // }
  //
  // void buildLanguageDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (builder) {
  //       return AlertDialog(
  //         title: Text('choselanguage'.tr),
  //         content: Container(
  //           width: double.maxFinite,
  //           child: ListView.separated(
  //             shrinkWrap: true,
  //             itemBuilder: (context, index) {
  //               return Padding(
  //                 padding: const EdgeInsets.all(8.0),
  //                 child: GestureDetector(
  //                   child: Text(locale[index]['name']),
  //                   onTap: () {
  //                     print(locale[index]['name']);
  //                     updateLanguage(locale[index]['locale']);
  //                   },
  //                 ),
  //               );
  //             },
  //             separatorBuilder: (context, index) {
  //               return Divider(
  //                 color: Colors.black,
  //               );
  //             },
  //             itemCount: locale.length,
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
}

class ListTileWidget extends StatelessWidget {
  final String text;
  final Function function;

  ListTileWidget({
    required this.function,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        height: 36,
        child: Text(
          text,
          //   style: TextStyle(
          //   color: Colors.white,
          //   fontSize: 16,
          //   fontWeight: FontWeight.w700,
          // ),
          style: GoogleFonts.tajawal(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}