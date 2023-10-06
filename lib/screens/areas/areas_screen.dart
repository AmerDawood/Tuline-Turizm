import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:tuline_turizm/api/controller/area_api_controller.dart';
import 'package:tuline_turizm/models/area.dart';

class AreaScreen extends StatefulWidget {
  const AreaScreen({Key? key}) : super(key: key);

  @override
  State<AreaScreen> createState() => _AreaScreenState();
}

class _AreaScreenState extends State<AreaScreen> {

  List<Area> _area = <Area>[];
  late Future<List<Area>> _future;



  @override
  void initState() {
    super.initState();
    _future = AreaApiController().getArea();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "المناطق",
          style: GoogleFonts.inter(
            color: Color(0xFF18324B),
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            height: 1.7,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1.0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/app');
              },
              icon: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.black,
              )),
        ],
      ),

      body:FutureBuilder<List<Area>>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: LoadingAnimationWidget.staggeredDotsWave(
                color: Colors.black,
                size: 50,
              ),
              // child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            _area = snapshot.data ?? [];
            return  GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 0,
                ),
                itemCount: _area.length,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                    onTap: (){
                      // Navigator.push(context,MaterialPageRoute(builder: (c){
                      //   return InstituteAuctionScreen(id:_institute[index].id);
                      // }));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                // height:130,
                                width: 50,
                                child:  Icon(Icons.account_balance,color: Colors.black,size: 40,)
                                // Image(image: NetworkImage('https://img.freepik.com/free-vector/city-hall-concept-illustration_114360-15155.jpg')
                                // )
                            ),
                            SizedBox(height: 30,),
                            Text(_area[index].title,
                            maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
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
