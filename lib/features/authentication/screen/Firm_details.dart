import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hisaabkitaabpractice/features/authentication/screen/Cities_details.dart';

class firm_details extends StatefulWidget{
  firm_details({super.key});
  @override
  State<firm_details> createState() => _firm_detailsState();
}
class _firm_detailsState extends State<firm_details>{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child:  Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 50, left: 20 , right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Container(
                      height: 9,
                      width:MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),color:Color(0xFF6D54FF) ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Flexible(
                    child: Container(
                      height: 9,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),color:Color(0xFFCBC2FF)),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Flexible(
                    child: Container(
                      height: 9,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),color:Color(0xFFCBC2FF)),
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
              SizedBox(height: 30,),
              Text('Apne Firm ki details share kare...',style: TextStyle(fontWeight: FontWeight.bold , fontSize:35 ),),
              SizedBox(height: 20,),
              TextFormField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
              ),
              labelText: 'Company / Firm Name',
                floatingLabelBehavior: FloatingLabelBehavior.always
              )
              ),
              SizedBox(height: 20,),
              TextFormField(decoration: InputDecoration (border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
              ),
                  labelText: 'GST Number',
                  floatingLabelBehavior: FloatingLabelBehavior.always
              )
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
               children: [
                IconButton(onPressed: (){
                  Get.to(city_details());
                }, icon: SvgPicture.asset('assets/logos/Group 119.svg'))
        
               ],
              )

            ],
          ),
        ),
      ),
    );

  }
  }