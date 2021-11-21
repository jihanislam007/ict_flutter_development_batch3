import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hovering/hovering.dart';

class custom_button extends StatelessWidget {

  late String btntext;
  late int textcolor;
  late double textsize;
  late int btncolor;
  Function callback;


  custom_button(this.btntext, this.textcolor, this.textsize, this.btncolor,this.callback);

  @override
  Widget build(BuildContext context) {


    var height_btn = MediaQuery.of(context).size.height/10;
    var width_btn = MediaQuery.of(context).size.width/4.5;


    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Container(
        height: height_btn,
        width: width_btn,
        decoration: BoxDecoration(
            color: Color(btncolor),
            borderRadius: BorderRadius.circular(10)
        ),
        child: TextButton(
          onPressed: () => callback(btntext),
          child: Text(btntext, style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: textsize, color: Color(textcolor))),),
        ),
      ),
    );
  }
}
