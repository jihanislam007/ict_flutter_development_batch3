import 'package:flutter/material.dart';

class OfflineImage extends StatelessWidget {
  const OfflineImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          
          Container(
            child: Image.asset("images/android.png"),
          ),Container(
            child: Image.asset("images/git.jpg"),
          )

        ],),
      ),
    );
  }
}
