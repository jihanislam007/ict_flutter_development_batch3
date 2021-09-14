import 'package:flutter/material.dart';

void main() {
  runApp(Tarek());
}

class Tarek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Batch -03"),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            height: 100,
            color: Colors.brown,
            child: Text("Abir Badsha",style: TextStyle(color: Colors.white, fontSize: 24),),
          ),

          Container(
            color: Colors.green,
            height: 100,
            child: Center(child: Text("Harunur Rashid jahid",style: TextStyle(color: Colors.white, fontSize: 24),)),
          ),

          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 100,
              width: 200,
              color: Colors.indigo,
              child: Text("hiji biji "),
            ),
          )

        ],
      )),
    ));
  }
}
