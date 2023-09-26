import 'package:flutter/material.dart';

class LocationDetails extends StatefulWidget {
  const LocationDetails({Key? key}) : super(key: key);

  @override
  State<LocationDetails> createState() => _LocationDetailsState();
}
class _LocationDetailsState extends State<LocationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'بيانات الموقع',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF18324B),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: ShapeDecoration(
                    color: Color(0xFF18324B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'تفاصيل العنوان ',
                        style: TextStyle(
                          color: Color(0xFF18324B),
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 42,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5F5FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'العنوان',
                            hintStyle: TextStyle(
                              color: Color(0xFF8C959E),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(right: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        width: double.infinity,
                        height: 42,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5F5FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'المحافظة',
                            hintStyle: TextStyle(
                              color: Color(0xFF8C959E),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(right: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        width: double.infinity,
                        height: 42,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5F5FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'المدينة',
                            hintStyle: TextStyle(
                              color: Color(0xFF8C959E),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(right: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        width: double.infinity,
                        height: 42,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5F5FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'الشارع',
                            hintStyle: TextStyle(
                              color: Color(0xFF8C959E),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(right: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        width: double.infinity,
                        height: 42,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5F5FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'اقرب مكان',
                            hintStyle: TextStyle(
                              color: Color(0xFF8C959E),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(right: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF32C864),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38),
            ),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'إضافة عنوان آخر',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Icon(
                Icons.add,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
