import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../core/constants/image_constants.dart';
import '../../../core/globals/local_variables.dart';
import '../../../theme/pallete.dart';
import '../../home/screens/home.dart';
import 'login_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}


class _SplashState extends State<Splash> {
  @override
    void initState() {
      // Timer(Duration(seconds: 3), () {
      //   Navigator.pushAndRemoveUntil(
      //       context, MaterialPageRoute(
      //       builder: (context)=> LoginScreen()), (route) => false);
      // });
        super.initState();
  }
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return Scaffold(
       // color: Colors.white,
      // height: width*2.2,
      // width: width,
      body: Center(
        child:Padding(
          padding:  EdgeInsets.only(left: width*0.1),
          child: SingleChildScrollView(
            child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0,right: 20),
                      child: Text('Jobspot',style: GoogleFonts.poppins(color:
                      Colors.black,fontSize:
                      22,fontWeight: FontWeight.w800),),
                    ),
                  ],
                ),
                SizedBox( height: height*0.07,),
                Container(
                  height: height*0.4,      width: width*0.8,


                    child: Image.asset(ImageConstants.splash,fit: BoxFit.fill,)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox( height: height*0.05,),

                    Text('Find Your',style: GoogleFonts.notoSans(color:
                    Colors.black,fontSize:
                    width*0.1,fontWeight: FontWeight.w500),),
                    Text('Dream Job',style: GoogleFonts.notoSans(color:
                    Color(0xffFCA34D),fontSize:
                    width*0.1,fontWeight: FontWeight.w500),),
                    Text('Here!',style: GoogleFonts.notoSans(color:
                    Colors.black,fontSize:
                    width*0.1,fontWeight: FontWeight.w500),),
                    SizedBox( height: height*0.01,),
                    Text('Explore all the most exciting job roles based on your interest and study major.!',style: GoogleFonts.notoSans(color:
                    Colors.black,fontSize:
                    width*0.035,fontWeight: FontWeight.w400),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 28.0,right: 20),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));

                        },
                        child: CircleAvatar(

                          radius: 26,
                          backgroundColor: Pallete.primaryColor,
                          child: Icon(Icons.arrow_forward_outlined,size: 30,color: Colors.white,)
                        ),
                      ),
                    ),
                  ],
                ),




              ],
            ),
          ),
        )
      ),
    );
  }
}
