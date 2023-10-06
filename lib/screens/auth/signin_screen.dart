import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuline_turizm/api/controller/auth_api_controller.dart';
import 'package:tuline_turizm/screens/auth/signup_screen.dart';
import 'package:tuline_turizm/screens/home/app.dart';
import 'package:tuline_turizm/screens/home/home_screen.dart';
import 'package:tuline_turizm/utils/helpers.dart';

import '../widgets/app_button.dart';
import '../widgets/app_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> with Helpers {
  late TextEditingController _emailEditingController;
  late TextEditingController _passwordEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailEditingController.dispose();
    _passwordEditingController.dispose();
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
          height: 350.h,
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
                    'تسجيل الدخول ',
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
                    textController: _emailEditingController,
                    hint: 'بريد إلكتروني',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                    textInputType: TextInputType.emailAddress,
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
                    // obscureText: true,
                    textInputType: TextInputType.visiblePassword,
                    // onSaved: (value) {
                    //   name = value!;
                    // },
                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                  AppButton(
                    function: () async{
                    await performLogin();
                    },
                    labelText: 'تسجيل الدخول ',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ليس لديك حساب ؟  ',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return SignUpScreen();
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
  Future<void> performLogin() async {
    if (checkData()) {
      await login();
    }
  }

  bool checkData() {
    if (_emailEditingController.text.isNotEmpty &&
        _passwordEditingController.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  Future<void> login() async {
    bool status = await AuthApiController().login(
        email: _emailEditingController.text,
        password: _passwordEditingController.text);
    if (status) {

      Navigator.pushReplacementNamed(context, '/app');
      showSnackBar(context: context, message: 'Logged In Successfully', error: false);

    } else {
      showSnackBar(context: context, message: 'Login failed', error: true);
    }
  }
}
