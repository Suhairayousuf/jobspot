import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobspot/core/constants/image_constants.dart';
import 'package:jobspot/theme/pallete.dart';

import '../../../core/globals/local_variables.dart';
import '../../job/screens/job_description.dart';
import '../../job/screens/job_search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   TextEditingController? search;
  final List<String> imageUrls = [
    ImageConstants.carousal,
    ImageConstants.carousal,
    ImageConstants.carousal,
  ];
   // List availableNames=[];
   //
   // List checkName(String txt) {
   //   List a=[];
   //   for(String i in companyNames) {
   //     if(i.toUpperCase().contains(txt.toUpperCase())) {
   //       a.add(i);
   //     }
   //   }
   //
   //   return a;
   // }
  @override
  void initState() {
    search = TextEditingController(text: '');

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: width*0.1,),
             Padding(
             padding: const EdgeInsets.only(left: 18.0,right: 18),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                Column(
                  children: [
                    Text('Hello',style: GoogleFonts.notoSans(color:
                    Colors.black,fontSize:
                    width*0.04,fontWeight: FontWeight.w500),),
                    Text('Suhaira',style: GoogleFonts.notoSans(color:
                    Colors.black,fontSize:
                    width*0.02,fontWeight: FontWeight.w500),),
                  ],
                ),
                 CircleAvatar(
                   radius: 20,
                   backgroundImage: CachedNetworkImageProvider('http://m.gettywallpapers.com/wp-content/uploads/2023/06/Best-Cute-Anime-Girl-Profile-Pic.jpg'),

                 )
               ],
             ),
           ),
              Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: width,

                decoration: BoxDecoration(
                  border: Border.all(
                      color: Pallete.primaryColor),
                  borderRadius:
                  BorderRadius.circular(10),
                ),
                child: TextFormField(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>JobSearch()));

                  },
                  autofocus: true,
                  onChanged: (text)  async {
                    // if(text.substring(text.length-1,text.length)=='-'){

                    // await FirebaseFirestore.instance.collection('users')
                    //     .where('shopId',isEqualTo: currentshopId).
                    // where('companyName',isEqualTo: text.replaceAll('-', '')).get().then((event) {
                    //   if(event.docs.isNotEmpty){
                    //     userList=event.docs.map((e)=>UserModel.fromJson(e.data())).toList();
                    //   }
                    //
                    //   if(mounted){
                    //     setState(() {
                    //
                    //     });
                    //   }
                    //
                    //
                    // });

                    // }

                    // availableNames= await checkName(search.text);

                    setState(() {});
                  },

                  controller: search,
                  keyboardType: TextInputType.text,

                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 15,top: 10),
                    hintText:
                    // widget.bookData.bookName.toString(),
                    'Search Your job',
                    hintStyle:  GoogleFonts.montserrat(
                        color: Pallete.primaryColor.withOpacity(0.5),
                        fontSize: width * 0.045),

                    suffixIcon: const Icon(Icons.search,),
                    disabledBorder:
                    InputBorder.none,
                    enabledBorder:
                    InputBorder.none,
                    errorBorder:
                    InputBorder.none,
                    border: InputBorder.none,
                    focusedBorder:
                    UnderlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(
                          15),
                      borderSide:
                      const BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // SizedBox(height: width*0.2,),
             Container(
              height: 180,
              width: width*2,
               // color: Colors.red,
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio:10/5,
                ),
                items: imageUrls.map((imageUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Image.asset(imageUrl,
                        fit: BoxFit.fill,
                        // width: double.infinity,
                      );
                    },
                  );
                }).toList(),
              ),
            ),
             SizedBox(height: width*0.05,),

            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18),
              child: Text('Find your Job',style: GoogleFonts.notoSans(color:
              Colors.black,fontSize:
              width*0.04,fontWeight: FontWeight.w800),),
            ),
            SizedBox(height: width*0.03,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffAFECFE),

                      borderRadius: BorderRadius.circular(5)
                  ),
                  height: 180,
                  width: width*0.35,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset( ImageConstants.search,height: 50,width: 50,fit: BoxFit.fill,),
                      SizedBox(height: height*0.005,),

                      Text('44.4k',style: GoogleFonts.notoSans(color:
                      Colors.black,fontSize:
                      width*0.025,fontWeight: FontWeight.w800),),
                      SizedBox(height: height*0.005,),

                      Text('Remote job',style: GoogleFonts.notoSans(color:
                      Colors.black,fontSize:
                      width*0.025,fontWeight: FontWeight.w800),), ],
                  ),

                ),
                SizedBox(width: width*0.05,),

                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffBEAFFE),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: height*0.005,),

                          Text('66.4k',style: GoogleFonts.notoSans(color:
                          Colors.black,fontSize:
                          width*0.04,fontWeight: FontWeight.w800),),
                          SizedBox(height: height*0.005,),

                          Text('Full time',style: GoogleFonts.notoSans(color:
                          Colors.black,fontSize:
                          width*0.025,fontWeight: FontWeight.w800),), ],
                      ),
                      height: 80,
                      width: width*0.5,


                    ),
                    SizedBox(height: width*0.05,),
                    Container(
                      height: 80,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: height*0.005,),

                          Text('34.4k',style: GoogleFonts.notoSans(color:
                          Colors.black,fontSize:
                          width*0.04,fontWeight: FontWeight.w800),),
                          SizedBox(height: height*0.005,),

                          Text('Part time',style: GoogleFonts.notoSans(color:
                          Colors.black,fontSize:
                          width*0.025,fontWeight: FontWeight.w800),), ],
                      ),
                      width: width*0.5,
                      decoration: BoxDecoration(
                          color: Color(0xffFFD6AD),

                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),


                  ],
                )
              ],
            ),
            SizedBox(height: width*0.03,),

            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18),
              child: Text('Recent Job List',style: GoogleFonts.notoSans(color:
              Colors.black,fontSize:
              width*0.04,fontWeight: FontWeight.w800),),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
                itemBuilder: (BuildContext context, int index) {

                return Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18,top: 8),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>JobDescriptionPage()));
                    },
                    child: Card(
                      child: Container(

                        decoration: BoxDecoration(
                            color: Colors.white, // Background color of the container
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5), // Shadow color
                                offset: Offset(0, 3), // Shadow position
                                blurRadius: 5, // Blur radius
                                spreadRadius: 0, // Spread radius
                              ),
                            ],
                            // color: Color(0xffBEAFFE),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        height: width*0.37,
                        width: width,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: height*0.01,),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,

                               children: [

                                Row(
                                  children: [
                                    CircleAvatar(
                                        backgroundColor:Color(0xffBEAFFE),
                                        child: Image.asset(ImageConstants.picture)),
                                    SizedBox(width: height*0.01,),


                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,

                                      children: [
                                        Text('Product Designer',style: GoogleFonts.notoSans(color:
                                        Colors.black,fontSize:
                                        width*0.03,fontWeight: FontWeight.w800),),
                                        Text('Google inc,California,USA',style: GoogleFonts.notoSans(color:
                                        Colors.black,fontSize:
                                        width*0.025,fontWeight: FontWeight.w300),),
                                      ],
                                    ),
                                  ],
                                ),
                                Image.asset('assets/images/Save.png',color: Colors.black,),
                               ],
                           ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [

                                  Row(
                                    children: [
                                      SizedBox(width: height*0.01,),
                                      Text('15.5k',style: GoogleFonts.notoSans(color:
                                      Colors.black,fontSize:
                                      width*0.03,fontWeight: FontWeight.w800),),
                                      Text('/Mo',style: GoogleFonts.notoSans(color:
                                      Colors.black,fontSize:
                                      width*0.03,fontWeight: FontWeight.w100),),
                                      SizedBox(width: height*0.01,),


                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [

                                  Row(
                                    children: [
                                      Container(
                                        height: height*0.035,
                                        width: width*0.35,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.2),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child:Center(
                                          child: Text('Senior Designer',style: GoogleFonts.notoSans(color:
                                          Colors.black,fontSize:
                                          width*0.03,fontWeight: FontWeight.w400),),
                                        ),
                                      ),
                                      SizedBox(width: height*0.01,),
                                      Container(
                                        child:Center(
                                          child: Text('Full Time',style: GoogleFonts.notoSans(color:
                                          Colors.black,fontSize:
                                          width*0.03,fontWeight: FontWeight.w400),),
                                        ),
                                        height: height*0.035,
                                        width: width*0.23,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.2),

                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                      ),

                                      SizedBox(width: height*0.01,),
                                      Container(
                                        child:Center(
                                          child: Text('Apply',style: GoogleFonts.notoSans(color:
                                          Colors.black,fontSize:
                                          width*0.03,fontWeight: FontWeight.w400),),
                                        ),
                                        height: height*0.035,
                                        width: width*0.23,
                                        decoration: BoxDecoration(
                                            color: Color(0xffFFD6AD),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                      ),




                                    ],
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),


                      ),
                    ),
                  ),
                );
              },
            ),



          ],
        ),
      ),
    );
  }

}
