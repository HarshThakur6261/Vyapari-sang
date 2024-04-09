import 'package:flutter/material.dart';
import "package:flutter/cupertino.dart";
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hisaabkitaabpractice/Home/home.dart';
import 'package:hisaabkitaabpractice/widget/dob_picker.dart';
class Date_gender extends StatefulWidget {
  const Date_gender({super.key});

  @override
  State<Date_gender> createState() => _Date_genderState();
}

class _Date_genderState extends State<Date_gender> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Padding(
      padding: const EdgeInsets.only(left: 32,top: 96,right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Tell Us More About You",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 71),
          Text("What’s Your Gender?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 71),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(side: BorderSide(color: Color(0XFF5570F1)) ),
                foregroundColor: Color(0XFF454545),
                backgroundColor: Color(0XFFFFFFFF),


              ), child: Text("Male")),

              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(side: BorderSide(color: Color(0XFF5570F1)) ),
                    foregroundColor: Color(0XFF454545),
                    backgroundColor: Color(0XFFFFFFFF),

                  ),
                  child: Text("Female")),
              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(side: BorderSide(color: Color(0XFF5570F1)) ),
                    backgroundColor: Color(0XFFFFFFFF),
                    foregroundColor: Color(0XFF454545),



                  ),
                  child: Text("Other")),
            ],
          ),
          SizedBox(height: 50,),
          Text("When Were You Born?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height:50),
          SizedBox(height: 200,child:D0b_picker(),),
          SizedBox(height:50),
          SizedBox(width: double.infinity,
            child: ElevatedButton(onPressed: (){
              Get.to(home());
            },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8) ),
                  backgroundColor: Color(0XFF5570F1),
                  foregroundColor: Color(0XFFFFFFFF),



                ),
                child: Text("Continue")),
          ),
       ],
      ),
    ),
    );
  }
}
