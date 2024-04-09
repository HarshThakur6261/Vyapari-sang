import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  var obsecure_text = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         body: Container(
           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
           margin: EdgeInsets.only(top: MediaQuery.of(context).size.width*0.04 , left:MediaQuery.of(context).size.height*0.025,right: MediaQuery.of(context).size.width*0.025),
           child: SingleChildScrollView(
             reverse: false,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 SvgPicture.asset('assets/logos/Vector 2.svg' ,height: MediaQuery.of(context).size.height*0.23,),
                 SizedBox(height: 50,),
                 Align(alignment: Alignment.centerLeft ,
                     child: Text('Namaste! 🙏' ,style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),)),
                 SizedBox(height: 30,),
                 TextFormField(
                   style: TextStyle(),
                   decoration: InputDecoration(labelText: 'Email Address'  ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                 ),
                 SizedBox(height: 30,),
                 TextFormField(
                   obscureText: obsecure_text,
                   decoration: InputDecoration(suffixIcon: obsecure_text == true?IconButton(onPressed: (){
                     setState(() {
                       obsecure_text = !obsecure_text;
                     });
                   }, icon: Icon(Icons.visibility_off)): IconButton(onPressed: (){
                     setState(() {
                       obsecure_text = !obsecure_text;
                     });
                   }, icon: Icon(Icons.visibility)) ,labelText: 'Password'  ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),),
                 ),
                 SizedBox(height: 15,),
                 Align(alignment: Alignment.centerLeft,child: 
                   TextButton(onPressed: (){}, child: Text('Forgot password?' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold  ,color: Color(0xFF006FFD)),)),),
                 SizedBox(
                   width: MediaQuery.of(context).size.width*0.9,
                   height: MediaQuery.of(context).size.height*0.06,
                   child: ElevatedButton(
                     onPressed: (){
                       // Get.to(Login_Screen());
                     }, child: Text('Login' , style: TextStyle(color: Colors.white ,fontSize: 20),),
                     style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),side: BorderSide(color: Colors.white)) , backgroundColor:Color(0xFF006FFD), ),
                   ),
                 ),
                 SizedBox(height: 15,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('Not a member?'),
                     TextButton(onPressed: (){}, child: Text("Register now" , style: TextStyle(color: Color(0xFF006FFD)),))
                   ],
           ),
                 Divider(color: Colors.black,),
                 Text('Or continue with'),
                 SizedBox(height: 15,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     GestureDetector(
                       onTap: (){},
                       child:Image.asset("assets/logos/google.png" ,height: 80,width: 80,)
                     ),
                     GestureDetector(
                         onTap: (){},
                         child:Image.asset("assets/logos/apple.png" ,height: 80,width: 80,)
                     ),
                     GestureDetector(
                         onTap: (){},
                         child:Image.asset("assets/logos/facebook.png" ,height: 80,width: 80,)
                     ),

                   ],
                 )



               ],
             ),
           ),
         ),
      ),
    );
  }
}
