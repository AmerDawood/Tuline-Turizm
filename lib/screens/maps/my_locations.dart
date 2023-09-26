import 'package:flutter/material.dart';

class MyLocations extends StatefulWidget {
  const MyLocations({super.key});

  @override
  State<MyLocations> createState() => _MyLocationsState();
}

class _MyLocationsState extends State<MyLocations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'بيانات الموقع  ',
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
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 160,
                    decoration: ShapeDecoration(
                      color: Color(0xFF18324B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 22,
                        backgroundColor: Color(0xFFF5F5FF),
                        child: Icon(
                          Icons.location_on_outlined,
                          color: Color(0xFF18324B),
                        ),
                      ),
                      Text(
                        'الموقع الحالي ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF18324B),
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'مواقع سابقة ',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF18324B),
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 13.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            maxRadius: 20,
                            backgroundColor: Color(0xFF007DFB),
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 14.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'تركيا ',
                                style: TextStyle(
                                  color: Color(0xFF18324B),
                                  fontSize: 15,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              Text(
                                'شارع الاستقلال ',
                                style: TextStyle(
                                  color: Color(0xFF768CA1),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFD93F3F),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Icon(
                              Icons.delete_outline_rounded,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            maxRadius: 20,
                            backgroundColor: Color(0xFF007DFB),
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 14.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'تركيا ',
                                style: TextStyle(
                                  color: Color(0xFF18324B),
                                  fontSize: 15,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              Text(
                                'شارع الاستقلال ',
                                style: TextStyle(
                                  color: Color(0xFF768CA1),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFD93F3F),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Icon(
                              Icons.delete_outline_rounded,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 34,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: ShapeDecoration(
                      color: Color(0xFF32C864),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        left: 14,
                        right: 14,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'إضافة عنوان اخر',
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}