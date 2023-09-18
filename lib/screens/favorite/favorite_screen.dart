import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('المفضلة',
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 150.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(16)
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),


                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('جولة سوميلا '),
                      SizedBox(height: 20,),

                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                    ],
                  ),

                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text('جولة سوميلا '),
                      SizedBox(height: 20,),

                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
