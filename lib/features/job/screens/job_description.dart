import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobspot/core/constants/image_constants.dart';
import 'package:jobspot/core/globals/local_variables.dart';
import 'package:jobspot/features/job/screens/upload_cv.dart';
import 'package:jobspot/theme/pallete.dart';

class JobDescriptionPage extends StatefulWidget {
  const JobDescriptionPage({Key? key}) : super(key: key);

  @override
  State<JobDescriptionPage> createState() => _JobDescriptionPageState();
}

class _JobDescriptionPageState extends State<JobDescriptionPage> {
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
          Column(
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

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){

                      setState(() {
                        index=0;
                      });
                    },
                    child: Container(
                      child:Center(
                        child: Text('Description',style: GoogleFonts.notoSans(color:
                        index==0? Colors.white:Colors.black,fontSize:
                        width*0.03,fontWeight: FontWeight.w400),),
                      ),
                      height: height*0.05,
                      width: width*0.4,
                      decoration: BoxDecoration(
                          color:index==0? Pallete.primaryColor: Pallete.purple,
                          borderRadius: BorderRadius.circular(6)
                      ),
                    ),
                  ),
                  SizedBox(width: width*0.05,),

                  InkWell(
                    onTap: (){
                      setState(() {
                        index=1;
                      });
                    },
                    child: Container(
                      child:Center(
                        child: Text('Company',style: GoogleFonts.notoSans(color:
                        index==1?Colors.white:Colors.black,fontSize:
                        width*0.03,fontWeight: FontWeight.w400),),
                      ),
                      height: height*0.05,
                      width: width*0.4,
                      decoration: BoxDecoration(
                          color: index==1?Pallete.primaryColor:Pallete.purple,
                          borderRadius: BorderRadius.circular(6)
                      ),
                    ),
                  ),
                ],
              ),
              index==0?Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                      child: Text('Job Description',style: GoogleFonts.notoSans(color:
                      Colors.black,fontSize:
                      width*0.04,fontWeight: FontWeight.w800),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                      child: Text('Sed ut perspiciatis unde omnis iste natus error sit voluptatem'
                          ' accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab'
                          ' illo inventore veritatis et quasi architecto beatae'
                          ' vitae dicta sunt explicabo. Nemo enim ip'
                          'sam voluptatem ...',style: GoogleFonts.notoSans(color:
                      Colors.black,fontSize:
                      width*0.03,fontWeight: FontWeight.w400),),
                    ),
                    SizedBox(height: width*0.01,),

                    Padding(
                      padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18,bottom: 10),
                      child: Container(
                        child:Center(
                          child: Text('Read More',style: GoogleFonts.notoSans(color:
                          Colors.black,fontSize:
                          width*0.03,fontWeight: FontWeight.w400),),
                        ),
                        height: height*0.035,
                        width: width*0.3,
                        decoration: BoxDecoration(
                            color: Pallete.purple,
                            borderRadius: BorderRadius.circular(6)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                      child: Text('Requirements',style: GoogleFonts.notoSans(color:
                      Colors.black,fontSize:
                      width*0.04,fontWeight: FontWeight.w800),),),
                    Expanded(
                      child: ListView.builder(

                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 18.0,right: 18,),
                            child: Row(
                              children: [
                                Icon(Icons.arrow_right), // You can use any icon you like for bullets
                                Text('bbbbbbbbbbbbbbbbbbbbbbbbbbbbbb'),
                              ],

                            ),
                          );
                        },
                      ),
                    ),
                    // Center(
                    //   child: Container(
                    //     child:Center(
                    //       child: Text('Apply',style: GoogleFonts.notoSans(color:
                    //       Colors.white,fontSize:
                    //       width*0.03,fontWeight: FontWeight.w400),),
                    //     ),
                    //     height: height*0.05,
                    //     width: width*0.8,
                    //     decoration: BoxDecoration(
                    //         color: Pallete.primaryColor,
                    //         borderRadius: BorderRadius.circular(6)
                    //     ),
                    //   ),
                    // ),
                    SizedBox(height: 15,)
                  ],
                ),
              ):
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: width*0.02,),

                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                        child: Text('About Company',style: GoogleFonts.notoSans(color:
                        Colors.black,fontSize:
                        width*0.04,fontWeight: FontWeight.w800),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18,top: 8),
                        child: Text('Sed ut perspiciatis unde omnis iste natus error sit voluptatem'
                            ' accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab'
                            ' illo inventore veritatis et quasi architecto beatae'
                            ' vitae dicta sunt explicabo. Nemo enim ip'
                            'sam voluptatem ...',style: GoogleFonts.notoSans(color:
                        Colors.black,fontSize:
                        width*0.03,fontWeight: FontWeight.w400),),
                      ),
                      // SizedBox(height: width*0.01,),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                        child: Text('Website',style: GoogleFonts.notoSans(color:
                        Colors.black,fontSize:
                        width*0.04,fontWeight: FontWeight.w800),),),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                        child: Text('http/flml/.com',style: GoogleFonts.notoSans(color:
                        Colors.black,fontSize:
                        width*0.02,fontWeight: FontWeight.w800),),),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                        child: Text('Industry',style: GoogleFonts.notoSans(color:
                        Colors.black,fontSize:
                        width*0.04,fontWeight: FontWeight.w800),),),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                        child: Text('Software solution',style: GoogleFonts.notoSans(color:
                        Colors.black,fontSize:
                        width*0.02,fontWeight: FontWeight.w800),),),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                        child: Text('Employee Size',style: GoogleFonts.notoSans(color:
                        Colors.black,fontSize:
                        width*0.04,fontWeight: FontWeight.w800),),),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                        child: Text('150',style: GoogleFonts.notoSans(color:
                        Colors.black,fontSize:
                        width*0.02,fontWeight: FontWeight.w800),),),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                        child: Text('Head office',style: GoogleFonts.notoSans(color:
                        Colors.black,fontSize:
                        width*0.04,fontWeight: FontWeight.w800),),),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                        child: Text('Malappuram',style: GoogleFonts.notoSans(color:
                        Colors.black,fontSize:
                        width*0.02,fontWeight: FontWeight.w800),),),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                        child: Text(''
                            'Type',style: GoogleFonts.notoSans(color:
                        Colors.black,fontSize:
                        width*0.04,fontWeight: FontWeight.w800),),),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                        child: Text('Multinational',style: GoogleFonts.notoSans(color:
                        Colors.black,fontSize:
                        width*0.02,fontWeight: FontWeight.w800),),),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18,top: 18),
                        child: Text(''
                            'Location',style: GoogleFonts.notoSans(color:
                        Colors.black,fontSize:
                        width*0.04,fontWeight: FontWeight.w800),),),
                      SizedBox(height: 15,),
                     Center(child: Image.asset('assets/images/Location.png',height: 200,width: width,)),
                      SizedBox(height: 15,),
                    ],
                  ),
                ),
              ),
              Center(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadCvPage()));
                  },
                  child: Container(
                    child:Center(
                      child: Text('Apply',style: GoogleFonts.notoSans(color:
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
              SizedBox(height: width*0.05,),


            ],
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
