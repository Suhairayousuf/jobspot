import 'package:flutter/material.dart';
import 'package:jobspot/core/globals/local_variables.dart';
import 'package:jobspot/theme/pallete.dart';

class JobSearch extends StatefulWidget {
  const JobSearch({Key? key}) : super(key: key);

  @override
  State<JobSearch> createState() => _JobSearchState();
}

class _JobSearchState extends State<JobSearch> {
  TextEditingController _textEditingController1 = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();
  void dispose() {
    _textEditingController1.dispose();
    _textEditingController2.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //
      //   elevation: 0,
      //   backgroundColor:Pallete.primaryColor ,
      //  automaticallyImplyLeading: true,
      // ),
      body: Column(
        children: [
          Container(

            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,

                colors: [
                  Color(0xff0D0140),
                  Color(0xff36353C),
                  Color(0xff0D0140),
                  Color(0xff36353C),

                ],
              ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5), // Shadow color
                    offset: Offset(0, 5), // Shadow position
                    blurRadius: 5, // Blur radius
                    spreadRadius: 0, // Spread radius
                  ),
                ],
                // color:Color(0xff0D0140),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))
            ),
            height: height*0.35,

            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Icon(Icons.arrow_back,color: Colors.white,),
                // First Search Field
               Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _textEditingController1,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search,),
                  filled: true,
                  fillColor: Colors.white, // Background color
                  hintText: 'Enter job type',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Rounded border radius
                  ),
                ),
              ),
            ),
          ),
                SizedBox(height: 5.0), // Add spacing between search fields
                // Second Search Field
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(

                      controller: _textEditingController2,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.location_on,color: Colors.orange,),
                        filled: true,
                        fillColor: Colors.white, // Background color
                        hintText: 'Location',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0), // Rounded border radius
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: width*0.05,),
          Row(
            children: [
              SizedBox(width: width*0.05,),
              Container(
                height: width*0.15,
                width: width*0.15,
                decoration: BoxDecoration(
                  color: Pallete.primaryColor,
                    borderRadius: BorderRadius.circular(15
                       )
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      height: width*0.15,
                      width: width*0.15,
                      decoration: BoxDecoration(
                          color: Pallete.primaryColor,
                          borderRadius: BorderRadius.circular(15
                          )
                      ),
                    ),
                  ],
                ),
              )

            ],
          )
        ],
      ),

    );
  }
}
