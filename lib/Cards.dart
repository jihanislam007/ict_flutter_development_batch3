import 'package:flutter/material.dart';

class cards extends StatelessWidget {
  const cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Container(
                  width: 200,
                  height: 200,
                  //color: Colors.red,
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
