import 'package:flutter/material.dart';
import 'package:tuline_turizm/screens/home/home_screen.dart';
import 'package:tuline_turizm/screens/home/type_service/servise_for_type.dart';

class SelectServiceType extends StatefulWidget {
  const SelectServiceType({super.key});

  @override
  State<SelectServiceType> createState() => _SelectServiceTypeState();
}

class _SelectServiceTypeState extends State<SelectServiceType> {
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                  return ServiceForType();
                }));
              },
              child: Stack(
                children: [

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'images/img.png',
                      width: double.infinity,
                      height: 140.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Center(
                        child: Text(
                          'International',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            shadows: [
                              Shadow(
                                color: Color(0xFF000000),
                                offset: Offset(1, 0),
                                blurRadius: 15,
                              ),
                              Shadow(
                                color: Color(0x3F000000),
                                offset: Offset(1, -1),
                                blurRadius: 4,
                              ),
                              Shadow(
                                color: Color(0x3F000000),
                                offset: Offset(2, 4),
                                blurRadius: 4,
                              ),
                              Shadow(
                                color: Color(0x3F000000),
                                offset: Offset(-3, 4),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.right,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                  return ServiceForType();
                }));
              },
              child: Stack(
                children: [
                  ClipRRect(

                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'images/img.png',
                      width: double.infinity,
                      height: 140.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Center(
                        child: Text(
                          'داخلي',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            shadows: [
                              Shadow(
                                color: Color(0xFF000000),
                                offset: Offset(1, 0),
                                blurRadius: 15,
                              ),
                              Shadow(
                                color: Color(0x3F000000),
                                offset: Offset(5, -1),
                                blurRadius: 4,
                              ),
                              Shadow(
                                color: Color(0x3F000000),
                                offset: Offset(5, 4),
                                blurRadius: 4,
                              ),
                              Shadow(
                                color: Color(0x3F000000),
                                offset: Offset(5, 4),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.right,
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
