import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuline_turizm/api/controller/favorite_api_controller.dart';
import 'package:tuline_turizm/models/section.dart';
import 'package:tuline_turizm/models/service.dart';
import 'package:tuline_turizm/perfs/user_preference_controller.dart';
import 'package:tuline_turizm/screens/auth/signin_screen.dart';
class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<Services> _services = <Services>[];
  late Future<List<Services>> _future;

  @override
  void initState() {
    super.initState();
    _future = FavoriteApiController().getFavorite();

  }
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
        // actions: [
        //   ElevatedButton(onPressed: (){
        //     print(_services.length);
        //   },child: Text('kldfj'),),
        // ],
        leading: InkWell(
            onTap: (){
              Scaffold.of(context).openDrawer();
            },
            child: Icon(Icons.menu,color: Color.fromRGBO(24, 50, 75, 1),)),
      ),


      body:UserPreferenceController().token =='' ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('يجب عليك تسجيل الدخول اولاً',
            style: GoogleFonts.inter(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                  return SignInScreen();
                }));

              },
              child: Text('انقر هنا',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ): FutureBuilder<List<Services>>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              // child: LoadingAnimationWidget.staggeredDotsWave(
              //   color: Colors.black,
              //   size: 50,
              // ),

              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            _services = snapshot.data ?? [];
            return ListView.builder(
              itemCount: _services.length,
                itemBuilder: (BuildContext ctx , value){
              return  Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 150.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Image.asset('images/new_van.jpeg',fit: BoxFit.cover,),
                          clipBehavior: Clip.antiAlias,
                        ),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text('جولة سوميلا ',
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 20,),

                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 159, 0,1),
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 3,),
                                Text('0',
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Image.asset('images/star.png',height: 20,color: Colors.white,)
                              ],
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
                            child: Icon(Icons.favorite,color: Colors.red,),
                          ),
                          SizedBox(height: 30,),
                          Text('ابتداءً من ',
                            style: GoogleFonts.inter(
                              color: Color.fromRGBO(0, 125, 251,1),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text('45 USD',
                            style: GoogleFonts.inter(
                              color: Color.fromRGBO(0, 125, 251,1),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
              );
            });
          } else {
            return Column(
              children: [
                Icon(
                  Icons.warning,
                  size: 80,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'No Data',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.grey,
                  ),
                ),
              ],
            );
          }
        },
      ),
    );


  }
}
