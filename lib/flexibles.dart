import 'package:flutter/material.dart';

class Flexibles extends StatelessWidget {
  const Flexibles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible"),
      ),
      body: Column(
        children: [

          Flexible(
            flex: 2,
              //fit: FlexFit.loose,
              child: Container(
                //height: 100,
                color: Colors.green,

              )
          ),

          Flexible(
            flex: 1,
              child: Container(
                color: Colors.purple,
              )
          )

        ],
      ),
    );
  }
}
