import 'package:flutter/material.dart';

class Stacks extends StatelessWidget {
  const Stacks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.topCenter,
            //overflow: Overflow.visible,
            children: [

              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              
              Positioned(
                  top: -50,
                  child: CircleAvatar(radius: 50,)),

              Positioned(
                  top: 60,
                  left: -50,
                  child: CircleAvatar(radius: 50,backgroundColor: Colors.purple,)),

              Positioned(
                  top: 60,
                  right: -50,
                  child: CircleAvatar(radius: 50,backgroundColor: Colors.purple,)),

              Positioned(
                  bottom: -60,
                  child: CircleAvatar(radius: 50,)),

            ],
          ),
        ),
      ),
    );
  }
}
