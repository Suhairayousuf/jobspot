import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobspot/features/auth/screens/splash_screen.dart';

import '../../../core/constants/image_constants.dart';
import '../../../theme/pallete.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({Key? key}) : super(key: key);

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(
          builder: (context)=> Splash()), (route) => false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.primaryColor,
      // height: width*2.2,
      // width: MediaQuery.of(context).size.width,
      body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height*0.2,      width: MediaQuery.of(context).size.width*0.2,


                  child: Image.asset(ImageConstants.logo)),
              Text('Jobspot',style: GoogleFonts.poppins(color:
              Colors.white,fontSize:
              20,fontWeight: FontWeight.w800),)
            ],
          )
      ),
    );
  }
}
