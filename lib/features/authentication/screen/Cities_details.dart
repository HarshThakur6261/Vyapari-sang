import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hisaabkitaabpractice/features/authentication/screen/Pesha.dart';

class city_details extends StatefulWidget{
  city_details({super.key});

  @override
  State<city_details> createState() => _city_detailsState();
}


 class _city_detailsState extends State<city_details>{
   @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body:
      SingleChildScrollView(
        padding: EdgeInsets.only(top: 50, left: 20 , right: 20),
        child:
        Column(
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
                    height: 9 ,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),color:Color(0xFF6D54FF
                    )),
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
            SizedBox(height: 20,),
            Text('Ap kin Cities me expand krna chahege?' , style: TextStyle(fontWeight: FontWeight.bold , fontSize:25 ),),
            SizedBox(height: 50,),
            TextFormField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
            ),
                labelText: 'Enter Cities',
                floatingLabelBehavior: FloatingLabelBehavior.always
            )
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){
                  Get.to(Pesha());
                }, icon: SvgPicture.asset('assets/logos/Group 119.svg'))

              ],
            )
          ],
        )
        ,),
    ));
  }
 }