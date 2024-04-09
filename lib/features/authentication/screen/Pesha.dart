import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hisaabkitaabpractice/Home/home.dart';
class Pesha extends StatefulWidget{
  Pesha({super.key});
  @override
  State<Pesha> createState() => _PeshaState();
}
class _PeshaState extends State<Pesha>{
  @override
Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 50, left: 20 , right: 20 , bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Container(
                      height: 9,
                      width:MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),color:Color(0xFF09101A) ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Flexible(
                    child: Container(
                      height: 9,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),color:Color(0xFF09101A)),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Flexible(
                    child: Container(
                      height: 9,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),color:Color(0xFF6D54FF)),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Flexible(
                    child: Container(
                      height: 9,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),color:Color(0xFFCBC2FF) ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Text('Apna Pesha select kare...',style: TextStyle(fontWeight: FontWeight.bold , fontSize:25 ),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){},
                    child: Text('Manufacturer' , style: TextStyle(fontSize: 20 , color: Colors.black , fontWeight: FontWeight.w600 ),) ,
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)) ,
                        shadowColor:Colors.blue.shade900 , elevation: 8,side: BorderSide(color: Colors.blue)),),
                  SizedBox(width:  20,),

                  ElevatedButton(onPressed: (){},
                    child: Text('Distributor' , style: TextStyle(fontSize: 20 , color: Colors.black , fontWeight: FontWeight.w600 ),) ,
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)) ,
                        shadowColor:Colors.blue.shade900 , elevation: 8,side: BorderSide(color: Colors.blue)),),



                ],
              ),
              SizedBox(height: 50,),
              Text('Apne Products ke bare me bataye?',style: TextStyle(fontWeight: FontWeight.bold , fontSize:25 ),),
              SizedBox(height: 30,),
              Text('Please Choose From Options Below...' ,

                style: TextStyle(
                    shadows: [
                      Shadow(
                          color: Colors.grey,
                          offset: Offset(0, -4))
                    ],
                    color: Colors.transparent , fontSize: 15 , decoration: TextDecoration.underline ,decorationColor: Colors.grey),),
              SizedBox(height: 20,),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey),
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(onPressed: (){
                  Get.to(home());

                }, style:ElevatedButton.styleFrom(
                    backgroundColor: Color(0XFF5570f1),
                            textStyle: TextStyle(color: Colors.white),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))


                        )  ,child:Text("Continue",style: TextStyle(color: Colors.white,fontSize:18 ) ),),
              ),



            ],
          ),
        ),

      ),
    );
}
}


