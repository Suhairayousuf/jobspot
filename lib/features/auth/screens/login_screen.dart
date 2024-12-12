import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobspot/features/auth/screens/signup_page.dart';
import 'package:jobspot/theme/pallete.dart';

import '../../../core/constants/image_constants.dart';
import '../../../core/globals/local_variables.dart';
import '../../home/screens/navigation_bar_page.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  bool isChecked = false;

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
         SizedBox(height: 10,),

        Column(
          children: [
            Text('Welcome Back',style: GoogleFonts.notoSans(color:
            Colors.black,fontSize:
            width*0.07,fontWeight: FontWeight.w500),),
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing\n'
                  '                    elit, sed do eiusmod tempo ',
                style: GoogleFonts.notoSans(color:
                Colors.black,fontSize:
                width*0.03,fontWeight: FontWeight.w500),),
            ),
          ],
        ),
         Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email',style: GoogleFonts.notoSans(color:
              Colors.black,fontSize:
              width*0.03,fontWeight: FontWeight.w800),),
              Padding(
                padding: const EdgeInsets.only(left: 28.0,right: 28,top: 28,bottom: 18),
                child: Container(
                    child: Form(
                      key: _formKey1,
                      child: Container(
                        decoration:BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ) ,

                        height: 50,
                        // width: 200,
                        child: TextFormField(

                          validator: (value) {
                            String patttern =
                                r'(^(?:[+0]9)?[0-9]{10,12}$)';
                            RegExp regExp = new RegExp(patttern);
                            if (value!.length == 0) {
                              return 'Please enter mobile number';
                            } else if (!regExp.hasMatch(value!)) {
                              return 'Please enter valid mobile  number';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.phone,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[0-9]')),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          autofocus: false,
                          controller: email,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 11, right: 3, bottom: 5),
                            errorStyle:
                            TextStyle(fontSize: 9, height: 0.3),
                            border: InputBorder.none,
                            hintText: "abc@gmail.com",
                            hintStyle: TextStyle(
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                          cursorColor: Colors.black,
                          cursorHeight: 20,
                          cursorWidth: 0.5,
                        ),
                      ),
                    )
                ),
              ),
              Text('password',style: GoogleFonts.notoSans(color:
              Colors.black,fontSize:
              width*0.03,fontWeight: FontWeight.w800),),
              Padding(
                padding: const EdgeInsets.only(left: 28.0,right: 28,top: 15),
                child: Container(
                    child: Form(
                      key: _formKey2,
                      child: Container(
                        decoration:BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ) ,

                        height: 50,
                        // width: 200,
                        child: TextFormField(

                          validator: (value) {
                            String patttern =
                                r'(^(?:[+0]9)?[0-9]{10,12}$)';
                            RegExp regExp = new RegExp(patttern);
                            if (value!.length == 0) {
                              return 'Please enter mobile number';
                            } else if (!regExp.hasMatch(value!)) {
                              return 'Please enter valid mobile  number';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.phone,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[0-9]')),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          autofocus: false,
                          controller: password,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 11, right: 3, bottom: 5),
                            errorStyle:
                            TextStyle(fontSize: 9, height: 0.3),
                            border: InputBorder.none,
                            hintText: "XXXXXXXXXXX",
                            hintStyle: TextStyle(
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                          cursorColor: Colors.black,
                          cursorHeight: 20,
                          cursorWidth: 0.5,
                        ),
                      ),
                    )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Checkbox(
                    hoverColor: Colors.red,

                    value: isChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked = newValue!;
                      });
                    },
                  ),
                  Text('Remember me',style: GoogleFonts.notoSans(color:
                  Colors.black,fontSize:
                  width*0.03,fontWeight: FontWeight.w400),),
                  SizedBox( width: width*0.1,),
                  SizedBox( width: width*0.1,),

                  Text('Forgot Password',style: GoogleFonts.notoSans(color:
                  Colors.black,fontSize:
                  width*0.03,fontWeight: FontWeight.w400),),
                  SizedBox( width: width*0.1,),

                ],
              ),

            ],
          ),
        ),
         Column(
          children: [
            InkWell(
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>NavigationBarPage(
                //
                // )));
              },
              child: Container(width: width*0.7,
                decoration: BoxDecoration(
                    color: Pallete.primaryColor,
                    borderRadius: BorderRadius.circular(15)
                ),
                height: width*0.15 ,
                child: Center(
                  child: Text('LOGIN',style: GoogleFonts.notoSans(color:
                  Colors.white,fontSize:
                  width*0.05,fontWeight: FontWeight.w800),),
                ),
              ),
            ),
            SizedBox( height: height*0.05,),

            Container(width: width*0.7,
              height: width*0.15 ,
              decoration: BoxDecoration(
                       color: Color(0xffBEAFFE),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor:Color(0xffBEAFFE),
                          child: Image.network(
                        ImageConstants.googleIcon,),
                    ),
                    Text('SIGN IN WITH GOOGLE',style: GoogleFonts.notoSans(color:
                    Colors.white,fontSize:
                    width*0.03,fontWeight: FontWeight.w800),),


                  ],
                ),
              ),
            ),
            SizedBox( height: height*0.01,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You dont have an account?',style: GoogleFonts.notoSans(color:
                Colors.black,fontSize:
                width*0.03,fontWeight: FontWeight.w400),),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                  },
                  child: Text('SignUp',style: GoogleFonts.notoSans(color:
                  Colors.red,fontSize:
                  width*0.037,fontWeight: FontWeight.w400),),
                ),
              ],
            ),
          ],
        )

       ],
     ),
    );
  }
}
