import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second page"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
              height: 250,
              color: Colors.green,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: new Icon(
                    Icons.ac_unit_rounded,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Center(child: Text("Flag of bangladesh",style: TextStyle(fontSize: 32),)),
            /*Container(
              color: Colors.red,
              child: Text(''),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(35),
                ),

            ),)*/

            /*Container(
              width: 200,
              height: 200,
              decoration: new BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: new Icon(
                Icons.ac_unit_rounded,
                color: Colors.black,
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}