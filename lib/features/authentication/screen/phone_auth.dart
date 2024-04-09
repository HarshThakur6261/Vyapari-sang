import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hisaabkitaabpractice/features/authentication/screen/set_password.dart';
import 'package:hisaabkitaabpractice/features/authentication/screen/signup.dart';
import 'package:pinput/pinput.dart';
class Phone_auth extends StatefulWidget {
  var Phonenumber;
  Phone_auth(this.Phonenumber);

  @override
  State<Phone_auth> createState() => _Phone_authState();
}

class _Phone_authState extends State<Phone_auth> {
  @override
  Widget build(BuildContext context) {
    var pin = TextEditingController();
    FirebaseAuth auth = FirebaseAuth.instance;
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.25)),
            SizedBox(width: double.infinity),//because column does not take all width of the screen or wrap inside container
            Text("Enter confirmation code",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 3),
            Text("A 6-digit code was sent to"),
            Text("${widget.Phonenumber}"),
            SizedBox(height: 20),
            const Pinput(
              length: 6,
              showCursor: true,
            ),

            SizedBox(height:100),
             SizedBox(width: MediaQuery.of(context).size.width*0.85,
    child: ElevatedButton(onPressed: (){}, child: Text("Resend code",style: TextStyle(color: Color(0XFFBBBBBB),fontSize: 20),),
    style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
    )),
          SizedBox(height: 20),

            SizedBox(width: MediaQuery.of(context).size.width*0.85,
                child: ElevatedButton(onPressed: ()  async {

try{
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: signup.verify, smsCode: pin.text);
                  await auth.signInWithCredential(credential);}

    catch (e){
  SnackBar(content: Text("wrong otp"));
    }


                  print(signup.verify);
                  if(pin == signup.verify){
                    Get.to(() => set_password());
                  }
                  else{
                    SnackBar(content: Text("wrong otp"));
                  }
                  Get.to(() => set_password());

                }, child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 20),),
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0XFF5570f1)),
                ))

          ],


        ),
      ),

    );
  }
}
