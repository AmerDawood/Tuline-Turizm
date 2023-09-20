import 'package:flutter/material.dart';



class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align at Bottom'),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Text('SZNfks'),
              Text('SZNfks'),
              // Add your other widgets here
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
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
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    Text(
                      'إضافة المال إلى المحفظة',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
