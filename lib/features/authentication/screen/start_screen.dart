

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hisaabkitaabpractice/features/authentication/screen/login.dart';
import 'package:hisaabkitaabpractice/features/authentication/screen/signup.dart';



class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF09101A),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                child: SvgPicture.asset('assets/logos/Vector 2.svg'),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.height*0.056,
              child: ElevatedButton(
                onPressed: (){
                  Get.to(Login_Screen());
                }, child: Text('Login' , style: TextStyle(color: Colors.white ,fontSize: 20),),
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(color: Colors.white)) , backgroundColor:Color(0xFF09101A), ),
              ),
            ),


            SizedBox(height: 20,),
            const Row(

                children: <Widget>[
                  Icon(Icons.arrow_right ,color: Color(0xFFFFFFFF),),
                  Expanded(child: Divider(color:  Color(0xFFFFFFFF))),
                  Text("OR",style: TextStyle(color:Color(0xFFFFFFFF) ),),
                  Expanded(
                      child: Divider(color:  Color(0xFFFFFFFF))
                  ),
                  Icon(Icons.arrow_left ,color: Color(0xFFFFFFFF),),
                ]
            ),
            SizedBox(height: 20,),
            Text('         Swipe Up\n to Register with us ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xFFFFFFFF)),),
            // Text('to Register with us',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF)),),
            SizedBox(height: 0,),
            IconButton(icon: SvgPicture.asset('assets/icons/Line 29.svg'),
              onPressed: (){
              Get.to(signup(),


                  );


              }),
          ],
        ));
  }
}
