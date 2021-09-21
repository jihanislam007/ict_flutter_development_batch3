import 'package:flutter/material.dart';

class ImageLoad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loading Image"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Center(
                child: Text(
              "We want to load Image",
              style: TextStyle(fontSize: 32),
            )),
            Container(
                height: 200,
                color: Colors.brown,
                child: //Text("Image"),
                    Image.network(
                        "https://blog.commlabindia.com/wp-content/uploads/2019/07/animated-gifs-corporate-training.gif")),
            Container(
              height: 200,
              color: Colors.brown,
              child: //Text("Image"),
                  Image.network(
                      "https://cdn.pixabay.com/photo/2021/04/23/19/57/yorkshire-terrier-6202621_960_720.jpg"),
            ),
            Container(
                height: 200,
                color: Colors.brown,
                child: //Text("Image"),
                    Image.network(
                        "https://www.extremetech.com/wp-content/uploads/2017/04/business-android-768x424.jpg")),
            Container(
                height: 200,
                color: Colors.brown,
                child: //Text("Image"),
                    Image.network(
                        "https://www.extremetech.com/wp-content/uploads/2017/04/business-android-768x424.jpg")),
          ],
        ),
      ),
    );
  }
}
