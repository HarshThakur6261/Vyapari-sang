import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hisaabkitaabpractice/features/authentication/screen/phone_auth.dart';
class signup extends StatefulWidget {
  const signup({super.key});
  static String verify = "" ;
  static var name = TextEditingController();
  static var  email = TextEditingController();


  @override
  State<signup> createState() => signupState();
}


class signupState extends State<signup> {
  final _formkey = GlobalKey<FormState>();
   var  phonenumber = TextEditingController();
   var countrycode = '+91';
  final firestore = FirebaseFirestore.instance.collection('harsh');

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;

     return 
       SafeArea(
         child: Scaffold(
           backgroundColor: Colors.deepPurple,
           body:  SingleChildScrollView(
             reverse: true,
             child: Column(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Flexible(
                   fit: FlexFit.loose,
                   child: Container(
                     height: 300,
                     child: SvgPicture.asset('assets/logos/Group 95.svg'),
                   ),
                 ),
                 SizedBox(height: 20,),
                 Flexible(
                   fit: FlexFit.loose,
                   child: Container(
                     height: 600,
                     decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)) ),
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Form(
                         key: _formkey,
                           child: Column(
                             children: [
                               // IconButton(onPressed: (){}, icon:Icon(Icons.abc_outlined)),
                               Text("Create Your Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                               SizedBox(height: 15,),
                               TextFormField(
                                 controller: signup.name,
                                 keyboardType: TextInputType.name,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                                 onTap: (){},
                                 decoration:  InputDecoration(
                                   border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(12)
                                   ),
                                   labelText: 'First Name',
                                   floatingLabelBehavior: FloatingLabelBehavior.always,
                                 ),

                               ),
                               SizedBox(height: 35),
                               TextFormField(
                                 keyboardType: TextInputType.name,
                                 autovalidateMode: AutovalidateMode.onUserInteraction,
                                 onTap: (){},
                                 decoration:  InputDecoration(
                                   border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(12),
                                   ),
                                   labelText: 'Last Name',
                                   floatingLabelBehavior: FloatingLabelBehavior.always,

                                 ),
                                 validator: MultiValidator(
                                     [
                                       RequiredValidator(errorText: '')
                                     ]
                                 ),
                               ),
                               SizedBox(height: 35),
                               TextFormField(
                                 controller: signup.email,
                                 keyboardType: TextInputType.emailAddress,
                                 autovalidateMode: AutovalidateMode.onUserInteraction,
                                 onTap: (){},
                                 decoration:  InputDecoration(
                                   border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(12),
                                   ),
                                   labelText: 'Email',
                                   floatingLabelBehavior: FloatingLabelBehavior.always,
                                 ),
                                 validator: MultiValidator(
                                     [
                                       RequiredValidator(errorText: ''),
                                       EmailValidator(errorText: "enter correct Email")
                                     ]
                                 ),
                               ),
                               SizedBox(height: 35),
                               TextFormField(
                                 controller: phonenumber,
                                 keyboardType: TextInputType.phone,
                                 autovalidateMode: AutovalidateMode.onUserInteraction,
                                 onTap: (){},
                                 decoration:  InputDecoration(
                                   border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(12)
                                   ),
                                   labelText: 'Phone Number',
                                   floatingLabelBehavior: FloatingLabelBehavior.always,
                                 ),
                                validator: MultiValidator(
                                  [

                                    MinLengthValidator(10, errorText: "enter correct number"),
                                   // PatternValidator(r'^\d+(?:\.\d+)?$', errorText: "enter correct number")
                                  ]
                                ),

                               ),
                               SizedBox(height: 35,),
                               Padding(
                                 padding: const EdgeInsets.only(bottom: 10),
                                 child: SizedBox(
                                   // height: 50,
                                     width: MediaQuery.of(context).size.width*0.9,
                                     child: ElevatedButton(onPressed: () async {

                                       firestore.doc().set({

                                         'name' : signup.name.text,
                                         'email' : signup.email.text,
                                         'Phone number' : phonenumber.text,
                                       });


                                       Get.to(() => Phone_auth(phonenumber.text));
                                       if(_formkey.currentState!.validate()){
                                         await auth.verifyPhoneNumber(
                                           phoneNumber:  '${countrycode+phonenumber.text}',
                                           verificationCompleted: (PhoneAuthCredential credential) async {
                                             await auth.signInWithCredential(credential);
                                           },
                                           verificationFailed: (FirebaseAuthException e) {
                                             if (e.code == 'invalid-phone-number') {
                                               var snackbar = SnackBar(content: Text("Provided number is invalid "),);
                                               ScaffoldMessenger.of(context).showSnackBar(snackbar);
                                             }
                                           },
                                           codeSent: (String verificationId, int? resendToken) {
                                              signup.verify = verificationId;
                                           },
                                           codeAutoRetrievalTimeout: (String verificationId) {

                                           },
                                         );
                                       }




                                     }, child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 20),),
                                     style: ElevatedButton.styleFrom(backgroundColor: Color(0XFF5570F1),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                     )),
                               )
                             ],
                           ),
                          ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
       );
    //



  }
}
