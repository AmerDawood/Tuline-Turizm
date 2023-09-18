import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('تواصل معنا ',
          style: GoogleFonts.inter(
            color: Color.fromRGBO(24, 50, 75, 1),
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Icon(Icons.arrow_back,color: Color.fromRGBO(24, 50, 75, 1),),
      ),
      body: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Spacer(),
                        Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(24, 50, 75, 1),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text('Hi , Thank You :) ',style: GoogleFonts.inter(color: Colors.white),)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text('Hello How Are You ? ')),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Spacer(),
                        Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(24, 50, 75, 1),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text('Hi , Thank You :) ',style: GoogleFonts.inter(color: Colors.white),)),
                        ),
                      ],
                    ),
                  ),



                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
              padding: const EdgeInsets.only(
                  bottom: 60,
                  left: 20,
                  right: 20
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16), // Adjust padding as needed
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  // border: Border.all(color: Colors.grey), // Add border
                  borderRadius: BorderRadius.circular(30), // Add rounded corners
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none, // Remove TextField border
                          hintText: 'اكتب رسالة...',
                        ),
                      ),
                    ),
                    Icon(Icons.send), // Icon suffix
                  ],
                ),
              )
          ),



        ],
      ),
    );
  }
}
