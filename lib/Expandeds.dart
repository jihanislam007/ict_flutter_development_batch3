import 'package:flutter/material.dart';

class Expandeds extends StatelessWidget {
  const Expandeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Expanded"),
        ),
        body: SafeArea(
          child: Column(
            children: [

              Expanded(
                flex: 2,
                  child: Container(
                color: Colors.red,
              )
              ),

              Expanded(
                flex: 1,
                  child: Container(
                    color: Colors.purple,
                  )
              ),

              Expanded(
                flex: 1,
                  child: Container(
                    color: Colors.amberAccent,
                  )
              )

            ],
          ),
        ));
  }
}
