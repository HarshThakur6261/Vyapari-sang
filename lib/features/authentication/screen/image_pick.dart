import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hisaabkitaabpractice/features/authentication/screen/date_gender.dart';
import 'package:hisaabkitaabpractice/widget/image_pick.dart';

class Image_pick extends StatefulWidget {
  const Image_pick({super.key});

  @override
  State<Image_pick> createState() => _Image_pickState();
}

class _Image_pickState extends State<Image_pick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(left:20, top: MediaQuery.of(context).size.height*0.15 ),
            child: Text("Choose Your Profile Picture",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height:MediaQuery.of(context).size.height*0.1),
          Center(
              child: Image_Pick_widget()),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.only(left: 30,right:30),
            child: SizedBox(width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if(Image_Pick_widget.image1 == null){
                    SnackBar(content: Text("please select image"));
                  }
                  else{
                    Get.to(() => Date_gender());
                  }
                },style:ElevatedButton.styleFrom(
                  backgroundColor: Color(0XFF5570f1),
                  textStyle: TextStyle(color: Colors.white,fontSize: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))


              )  ,child:Text("Save Picture",style: TextStyle(color: Colors.white),),),
            ),
          ),
        ],

      ),
    );
  }
}
