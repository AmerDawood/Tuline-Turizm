import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:html/parser.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:tuline_turizm/api/controller/privacy_api_controller.dart';
import 'package:tuline_turizm/models/about.dart';
import 'package:tuline_turizm/models/privacy.dart';

import '../../../api/controller/about_api_controller.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  late Future<About> _future;

  @override
  void initState() {
    super.initState();
    _future = AboutApiController().getAboutData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "عن التطبيق",
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
      body: FutureBuilder<About>(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: LoadingAnimationWidget.twistingDots(leftDotColor: Colors.black, rightDotColor: Colors.red, size: 20),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data == null) {
            return Center(
              child: Text('No data available'),
            );
          } else {
            var document = parse(snapshot.data!.content);
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        document.body?.text ?? '',
                        textAlign: TextAlign.right,
                        style: GoogleFonts.inter(
                          color: Color(0xFF193149),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          height: 1.7,
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          }
        },
      ),
    );
  }
}
