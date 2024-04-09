import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hisaabkitaabpractice/features/authentication/screen/image_pick.dart';
import 'package:hisaabkitaabpractice/features/authentication/screen/signup.dart';

class set_password extends StatefulWidget {
  const set_password({super.key});

  @override
  State<set_password> createState() => set_passwordState();
}

  class set_passwordState extends State<set_password> {
  var _formkey = GlobalKey<FormState>();
  var password = TextEditingController();
   bool passwordVisible = true ;
  @override
  Widget build(BuildContext context) {

    // void initState() {
    //   _passwordVisible = false;
    // }

    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.16,left: 40)),

           Padding(
             padding: const EdgeInsets.only(left: 20),
             child: Text( "WELCOME" + " " + signup.name.text ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)
             ),
           ),
           SizedBox(height: 20),
           Padding(
             padding: const EdgeInsets.only(left: 28),
             child: Text("Please Set Your Password",style: TextStyle(height: 2,decoration: TextDecoration.underline,decorationThickness: 1 ,fontSize: 15,),),
           ),
           SizedBox(height: 50),
           Padding(
             padding: const EdgeInsets.only(left: 15,right: 15),
             child: Form(
             key: _formkey,
          child:
                SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                       autovalidateMode: AutovalidateMode.onUserInteraction,
                       obscureText: passwordVisible,

                       decoration:  InputDecoration(
                         border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(12)
                         ),
                         labelText: 'New Password',
                         suffixIcon: SecurePassword(),
                       ),
                       validator: MultiValidator(
                           [
                             RequiredValidator(errorText: 'Required'),
                           ]
                       ),
                        

               ), const SizedBox(height: 20),
                      TextFormField(
                      controller: password,
                     autovalidateMode: AutovalidateMode.onUserInteraction,
                      obscureText: passwordVisible,

                     decoration:  InputDecoration(
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(12)
                       ),
                       labelText: 'Confirm Password',

                     ),
                     validator: MultiValidator(
                         [
                           RequiredValidator(errorText: 'Required'),

                         ]
                     ),
                   ),
    ]
    ),
                )

    ),
           ),
           SizedBox(height: 30),



              Padding(
               padding: const EdgeInsets.only(left: 40,right: 40),
               child:
   SizedBox(
                 width: double.infinity,
    height: 50,
    child:
    ElevatedButton(
                   onPressed: () async {
                     Get.to(() => const Image_pick());
                     print(signup.email.text);
                     print(password.text);
                     try {
                       final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                         email: signup.email.text,
                         password: password.text,
                       );


                     } on FirebaseAuthException catch (e) {
                       if (e.code == 'weak-password') {
                         if (kDebugMode) {
                           print('The password provided is too weak.');
                         }
                       }
                       else
                         if (e.code == 'email-already-in-use') {
                         print('The account already exists for that email.');
                       }
                     } catch (e) {
                       print(e);
                     }

                   },style:ElevatedButton.styleFrom(
        backgroundColor: Color(0XFF5570f1),
        textStyle: TextStyle(color: Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))


    )  ,child:Text("Continue",style: TextStyle(color: Colors.white),),),
    ),
               ),


    ]
    ),
     ),




    );
  }

  Widget SecurePassword (){

    return IconButton(onPressed: (){
      setState(() {
        passwordVisible = !passwordVisible;
      });

    }, icon: passwordVisible ? Icon(Icons.visibility_off) : Icon(Icons.visibility) );

  }

}

