import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobspot/core/constants/image_constants.dart';
import 'package:jobspot/core/globals/local_variables.dart';
import 'package:jobspot/theme/pallete.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  TextEditingController _textController = TextEditingController();
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: <Widget>[
          // Background widget
          Container(
            width: width,
            height: height,

          ),

          // Foreground widget
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: width*0.3,),
                Container(
                  width: width,
                  height: width*0.35,
                  color: Colors.grey.withOpacity(0.3),
                  child: Column(
                    children: [
                      SizedBox(height: width*0.1,),
                      Text('UI/UX Designer',style: GoogleFonts.notoSans(color:
                      Colors.black,fontSize:
                      width*0.05,fontWeight: FontWeight.w700),),
                      SizedBox(height: width*0.04,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.black,
                              ),
                              SizedBox(width: width*0.02,),

                              Text('Google',style: GoogleFonts.notoSans(color:
                              Colors.black,fontSize:
                              width*0.035,fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.black,
                              ),
                              SizedBox(width: width*0.02,),

                              Text('California',style: GoogleFonts.notoSans(color:
                              Colors.black,fontSize:
                              width*0.035,fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.black,
                              ),
                              SizedBox(width: width*0.02,),
                              Text('1 day ago',style: GoogleFonts.notoSans(color:
                              Colors.black,fontSize:
                              width*0.035,fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child:Center(child: Image.asset('assets/images/illustration.png',height: 300,width: 300,)),
                  height: height*0.35,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6)
                  ),
                ),
                Text('Successful',style: GoogleFonts.notoSans(color:
                Colors.black,fontSize:
                width*0.05,fontWeight: FontWeight.w700),),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18,top: 8),
                  child: Text('Congratulation your application sucessfully sent',style: GoogleFonts.notoSans(color:
                  Colors.grey,fontSize:
                  width*0.03,fontWeight: FontWeight.w400),),
                ),
                SizedBox(height: width*0.1),
              ],
            ),
          ),

          Positioned(
              top:60,
              left: width*0.37,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xffAFECFE),
                child: Image.network(ImageConstants.googleIcon,height: 70,),

              )),
        ],
      ),
    );

  }
}
