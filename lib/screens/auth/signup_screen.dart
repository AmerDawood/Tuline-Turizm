import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuline_turizm/api/controller/auth_api_controller.dart';
import 'package:tuline_turizm/screens/auth/signin_screen.dart';
import 'package:tuline_turizm/screens/home/app.dart';
import 'package:tuline_turizm/screens/home/home_screen.dart';
import 'package:tuline_turizm/utils/helpers.dart';

import '../widgets/app_button.dart';
import '../widgets/app_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> with Helpers {
  late TextEditingController _nameEditingController;
  late TextEditingController _emailEditingController;
  late TextEditingController _passwordEditingController;
  // late TextEditingController _confirmPasswordEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameEditingController = TextEditingController();
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
    // _confirmPasswordEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameEditingController.dispose();
    _emailEditingController.dispose();
    _passwordEditingController.dispose();
    // _confirmPasswordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation:.0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_rounded,
                color: Colors.black,
              )),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: double.infinity,
          height: 550.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 21,
              right: 21,
              top: 21,
            ),
            child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'تسجيل دخول جديد',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          color: Color(0xFF007DFB),
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                            return Home();
                          }));
                        },
                        child: Container(
                          width: 95,
                          height: 33,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFF18324B)),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'دخول كزائر',
                              style: GoogleFonts.inter(
                                color: Color(0xFF18324B),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),

                  AppTextField(
                    textController: _nameEditingController,
                    hint: 'الاسم الكامل',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter name';
                      }
                      return null;
                    },
                    textInputType: TextInputType.text,
                    // onSaved: (value) {
                    //   name = value!;
                    // },
                  ),
                  AppTextField(
                    textController: _emailEditingController,
                    hint: 'بريد إلكتروني',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                    textInputType: TextInputType.text,
                    // onSaved: (value) {
                    //   name = value!;
                    // },
                  ),

                  AppTextField(
                    textController: _passwordEditingController,
                    hint: 'كلمة المرور',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                    textInputType: TextInputType.text,
                    // onSaved: (value) {
                    //   name = value!;
                    // },
                  ),
                  // AppTextField(
                  //   textController: _confirmPasswordEditingController,
                  //   hint: 'تأكيد كلمة المرور',
                  //   validator: (value) {
                  //     if (value!.isEmpty) {
                  //       return 'Please enter cnfirm password';
                  //     }
                  //     return null;
                  //   },
                  //   textInputType: TextInputType.text,
                  //   // onSaved: (value) {
                  //   //   name = value!;
                  //   // },
                  // ),

                  SizedBox(
                    height: 20.0,
                  ),
                  AppButton(
                    function: ()async{
                    await performRegister();
                    },
                    labelText: 'سجل الان',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('هل لديك حساب ? ',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                            return SignInScreen();
                          }));
                        },
                        child: Text('سجل الان',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),



                ]),
          ),
        ),
      ),
    );
  }
  Future<void> performRegister() async {
    if (checkData()) {
      await register();
    }
  }

  bool checkData() {

    if (_nameEditingController.text.isNotEmpty &&
        _emailEditingController.text.isNotEmpty &&
        _passwordEditingController.text.isNotEmpty
        // _confirmPasswordEditingController.text.isNotEmpty
    ){
      return true;
    }
    showSnackBar(context: context, message: 'Enter required data',error: true);
    return false;
  }
  Future<void> register() async {
    bool status = await AuthApiController().register(
        context: context,
        fullName: _nameEditingController.text,
        email: _emailEditingController.text,
        password: _passwordEditingController.text,
        // password_confirmation: _confirmPasswordEditingController.text,
    );
    if (status) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
        return SignInScreen();
      }));
    } else {
      // showSnackBar(context: context, message: 'Register Failed', error: true);
    }
  }


}
