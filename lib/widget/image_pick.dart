import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Image_Pick_widget extends StatefulWidget {
  const Image_Pick_widget({super.key});
  static File?  image1 ;

  @override
  State<Image_Pick_widget> createState() => _Image_Pick_widgetState();
}

class _Image_Pick_widgetState extends State<Image_Pick_widget> {


  void _Uploadpicture() async {
    final selected_image = await  ImagePicker().pickImage(source: ImageSource.camera);
    if(selected_image == null) return;
    setState(() {
      Image_Pick_widget.image1 = File(selected_image!.path);
      
    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          image: (Image_Pick_widget.image1 == null) ? null : DecorationImage(image: FileImage(Image_Pick_widget.image1!),fit: BoxFit.fill),
          color: Color(0XFFBBC7FF), borderRadius: BorderRadius.circular(150),),
        child: TextButton(onPressed: _Uploadpicture,
            child: (Image_Pick_widget.image1 == null) ? const Text("Tap to Upload", style: TextStyle(fontSize: 20),) : const Text(""))


    );
  }


}
