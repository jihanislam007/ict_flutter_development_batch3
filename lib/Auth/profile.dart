import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {


  File? imageFile;


  String name = '';
  String pass = '';

  @override
  void initState() {
    // TODO: implement initState
    getSharedPref();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            TextButton(onPressed: (){
              //chooseImage();
              _getFromGallery();
            }, child: Text('Chose Image')),

            Container(
              height: 500,
              width: 500,
              child: CircleAvatar(child: displaySignatureFile()),
            ),

            Text('User name : $name'),
            Text('Password : $pass'),
          ],
        ),
      ),
    );
  }
  getSharedPref() async {
    final pref = await SharedPreferences.getInstance();

    setState(() {
      name = pref.getString('user_name')!;
      pass = pref.getString('pass')!;
    });
  }

  /// Get from gallery
  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 100,
      maxHeight: 100,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  Widget displaySignatureFile() {
    return new SizedBox(
      height: 280.0,
      width: 280.0,
      //child: new Card(child: new Text(''+galleryFile.toString())),
      //child: new Image.file(galleryFile),
      child: imageFile == null
          ? new Icon(Icons.camera_alt_outlined, size: 100)
          : new Image.file(imageFile!),
    );
  }
}
