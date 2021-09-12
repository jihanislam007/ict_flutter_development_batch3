import 'package:flutter/material.dart';

void main() {
  runApp(jomshedAli());
}

class jomshedAli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              actions: [Icon(Icons.accessibility_new_outlined)],
              leading: Icon(Icons.account_balance_sharp),
              backgroundColor: Colors.deepOrange,
              centerTitle: true,
              title: Text("Batch -03"),
            ),
            body: SafeArea(
                child: Container(
                  width: double.infinity,
                    height: 300,
                    color: Colors.green,
                    child: Text(
              "Bangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways.Its Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common.On the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                backgroundColor: Colors.purple,
                color: Colors.white,
              ),
            )
                    /*Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 30,left: 30),
                  child: Text(
                    "Bangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways.Its Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common.On the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      backgroundColor: Colors.purple,
                      color: Colors.white,
                    ),
                  ),
                ),

              )*/
                    ))));
  }
}
