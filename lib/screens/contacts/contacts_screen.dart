import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  TextEditingController _textController = TextEditingController();
  bool _isSending = false;
  bool isContainerOpen = false; // Control the visibility of the container

  void toggleSendButton() {
    setState(() {
      _isSending = _textController.text.isNotEmpty;
    });
  }

  void sendMessage() {
    // Perform your send message action here.
    // For example, you can print the text to the console.
    print(_textController.text);
    // Clear the text field and reset the button to microphone.
    _textController.clear();
    toggleSendButton();
  }

  @override
  void initState() {
    super.initState();
    _textController.addListener(toggleSendButton);
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'تواصل معنا ',
          style: GoogleFonts.inter(
            color: Color.fromRGBO(24, 50, 75, 1),
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Icon(Icons.menu, color: Color.fromRGBO(24, 50, 75, 1)),
        ),
      ),
      body: Column(
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
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
                      child: _isSending
                          ? Transform.rotate(
                        angle: pi, // 180 درجة
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                          : IconButton(
                        icon: Icon(Icons.mic, color: Colors.white),
                        onPressed: () {
                          setState(() {
                            isContainerOpen = !isContainerOpen;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 322,
                      height: 45,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.20,
                            color: Color(0x5ED9D9D9),
                          ),
                          borderRadius: BorderRadius.circular(33),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x2B000000),
                            blurRadius: 4,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: TextField(
                        controller: _textController,
                        decoration: InputDecoration(
                          prefix: IconButton(
                            icon: Icon(Icons.attach_file),
                            onPressed: () {
                              setState(() {
                                isContainerOpen = !isContainerOpen;
                              });
                            },
                          ),
                          border: InputBorder.none,
                          hintText: 'ادخل النص هنا',
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Visibility(
            visible: isContainerOpen,
            child: Container(
              // Your container content goes here
              width: double.infinity,
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Text('Attachment Container'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
