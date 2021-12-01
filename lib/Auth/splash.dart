import 'dart:async';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  bool value = false;

  @override
  void initState() {
    Timer(Duration(seconds: 10), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var wide = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          value = !value;
        });
      }),
      // backgroundColor: Color(0xFFffdb98),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: height / 2,
                child: FlareActor(
                  'animation/Teddy.flr',
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                  animation: value == false ? 'success' : 'fail',
                ),
              ),
              /*Container(
                height: height/2,
                child: Image.network('https://i0.wp.com/acegif.com/wp-content/uploads/2021/4fh5wi/welcome-7.gif'),
              ),*/

              SizedBox(
                height: height / 12,
              ),
              Container(
                height: height / 4.5,
                child: Center(
                    child: Text(
                  'My E-commerce',
                  style: GoogleFonts.arbutus(
                      textStyle: TextStyle(
                          fontSize: wide / 12, color: Color(0xFF876555))),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
