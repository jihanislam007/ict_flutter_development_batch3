
import 'package:flutter/material.dart';

class custom_widget extends StatelessWidget {

  late String image;
  late String text;

  custom_widget(String image, String text){
    this.image=image;
    this.text=text;
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 120,
      width: 120,
      child: Card(
        elevation: 20,
        child: Column(
          children: [

            Container(
              height: 80,
              width: 80,
              child: Image.network(image),
            ),
            Divider(height: 5,),
            Container(
              child: Center(child: Text(text)),
            )

          ],
        ),
      ),
    );
  }
}
