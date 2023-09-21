import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobspot/core/constants/image_constants.dart';
import 'package:jobspot/core/globals/local_variables.dart';
import 'package:jobspot/features/job/screens/success_page.dart';
import 'package:jobspot/theme/pallete.dart';

class UploadCvPage extends StatefulWidget {
  const UploadCvPage({Key? key}) : super(key: key);

  @override
  State<UploadCvPage> createState() => _UploadCvPageState();
}

class _UploadCvPageState extends State<UploadCvPage> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: width*0.05,),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                  child: Text('Upload Cv',style: GoogleFonts.notoSans(color:
                  Colors.black,fontSize:
                  width*0.04,fontWeight: FontWeight.w800),),

                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18,top: 8),
                  child: Text('Add your CV or Resume to apply this job',style: GoogleFonts.notoSans(color:
                  Colors.grey,fontSize:
                  width*0.03,fontWeight: FontWeight.w400),),
                ),
                SizedBox(height: width*0.05,),
                  Padding(
        padding: const EdgeInsets.only(left: 18.0,right: 18,top: 8),
        child: DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(12),
            padding: EdgeInsets.all(6),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: Container(
                height: width*0.3,
                width: width,
                color: Colors.grey.shade200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.upload_file,size: 50,color: Colors.grey,),
                    SizedBox(width: width*0.05,),
                    Text('Upload CV / Resume',style: GoogleFonts.notoSans(color:
                    Colors.grey,fontSize:
                    width*0.03,fontWeight: FontWeight.w400),),

                  ],
                ),
              ),
            ),
        ),
      ),
                  Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                  child: Text('Cover Letter',style: GoogleFonts.notoSans(color:
                  Colors.black,fontSize:
                  width*0.04,fontWeight: FontWeight.w800),),


                ),
                  Padding(
                  padding: const EdgeInsets.only(
                      left: 22.0, right: 18, top: 10),
                  child: TextFormField(
                    maxLines: 7,
                    controller: _textController,
                    cursorColor: Colors.black,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      fontFamily: 'urbanist',
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Explain why you are the right person for this job',
                      hintStyle: GoogleFonts.notoSans(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,

                      ),
                      fillColor: Colors.white,
                      filled: true,
                      disabledBorder: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(15)),
                      errorBorder: InputBorder.none,
                      border: InputBorder.none,

                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),

                      //
                      // border: OutlineInputBorder(),
                      // focusedBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(color: Color(0xff034a82),width: 2)
                      // ),
                    ),
                  ),
                ),
                SizedBox(height: width*0.1),
                Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessPage()));

                    },
                    child: Container(
                      child:Center(
                        child: Text('Apply Now',style: GoogleFonts.notoSans(color:
                        Colors.white,fontSize:
                        width*0.03,fontWeight: FontWeight.w400),),
                      ),
                      height: height*0.05,
                      width: width*0.8,
                      decoration: BoxDecoration(
                          color: Pallete.primaryColor,
                          borderRadius: BorderRadius.circular(6)
                      ),
                    ),
                  ),
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
