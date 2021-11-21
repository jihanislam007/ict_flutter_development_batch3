import 'package:flutter/material.dart';

class Gridviews extends StatelessWidget {
  const Gridviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid view"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 3,
        children: [

          Container(
            color: Colors.pinkAccent,
        ),

          Container(
            color: Colors.pinkAccent,
          ),

          Container(
            color: Colors.pinkAccent,
          ),

          Container(
            color: Colors.pinkAccent,
          ),

          Container(
            color: Colors.pinkAccent,
          )

          ],
        ),
      ),

    );
  }
}
