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
      backgroundColor: Colors.grey.shade200,
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
        leading: InkWell(
            onTap: (){
              Scaffold.of(context).openDrawer();
            },
            child: Icon(Icons.menu,color: Color.fromRGBO(24, 50, 75, 1),)),
      ),
      body: ListView(
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
                      color: Colors.grey.shade300,
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

          SizedBox(height: 390,),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.keyboard_voice,color: Colors.white,),
                ),
              ),

              SizedBox(width: 10,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), // Adjust the border radius as needed
                  // border: Border.all(
                  // // color: Colors.white,
                  // width: 1.0,
                  // ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 1,
                              offset: Offset(0, 1), // changes position of shadow
                            ),
                          ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "اكتب رسالتك هنا...",
                      prefixIcon: Icon(Icons.attach_file,color: Colors.grey,),
                      border: InputBorder.none, // Remove the default border
                      contentPadding: EdgeInsets.all(10), // Adjust the padding as needed
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),


            ],
          )





        ],
      ),
    );
  }
}
