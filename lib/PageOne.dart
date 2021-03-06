import 'package:flutter/material.dart';
import 'package:ict_flutter_development_batch3/Gridviews.dart';
import 'package:ict_flutter_development_batch3/RowColumn.dart';
import 'package:ict_flutter_development_batch3/Stacks.dart';

import 'Cards.dart';
import 'Expandeds.dart';
import 'ImageLoad.dart';
import 'Listtiles.dart';
import 'OflineImage.dart';
import 'SecondPage.dart';
import 'calculator/calculator.dart';
import 'flexibles.dart';
import 'railSeba/rail.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [

            UserAccountsDrawerHeader(accountName: Text("Name"), accountEmail: Text("Name@g.c"),),

            ListTile(
              leading: Icon(Icons.accessibility),
              title: Text("Home"),
            ),ListTile(
              leading: Icon(Icons.accessibility),
              title: Text("Home"),
            ),ListTile(
              leading: Icon(Icons.accessibility),
              title: Text("Home"),
            ),ListTile(
              leading: Icon(Icons.accessibility),
              title: Text("Home"),
            ),

          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Batch -03"),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            height: 100,
            color: Colors.brown,
            child: Text(
              "Abir Badsha",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          Container(
            color: Colors.green,
            height: 100,
            child: Center(
                child: Text(
              "Harunur Rashid jahid",
              style: TextStyle(color: Colors.white, fontSize: 24),
            )),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 100,
              width: 200,
              color: Colors.indigo,
              child: ListView(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: 70,
                        width: 80,
                        //color: Colors.red,
                        child: Text(
                          "hiji biji ",
                          textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        )),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        height: 30,
                        width: 80,
                        //color: Colors.green,
                        child: Text("hiji biji ",
                            textAlign: TextAlign.end,
                            style:
                                TextStyle(color: Colors.white, fontSize: 24))),
                  )
                ],
              ),
            ),
          ),
          ElevatedButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  primary: Colors.green,
                  textStyle: TextStyle(fontSize: 32) // foreground
                  ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
              child: Text('Push Me')),
          TextButton(onPressed: () {}, child: Text("TextButton")),
          OutlinedButton(onPressed: () {}, child: Text('OutLined Button')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ImageLoad()));
              },
              child: Text("Image Load")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OfflineImage()));
              },
              child: Text("offline Image Load")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RowColumn()));
              },
              child: Text("Row column")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Listtiles()));
              },
              child: Text("List Tile")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Stacks()));
              },
              child: Text("Stack")),


          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Expandeds()));
          }, child: Text(" Expanded ")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => cards()));
          }, child: Text(" Card  ")),


          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Gridviews()));
          }, child: Text(" Grid view  ")),


          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Flexibles()));
          }, child: Text(" Flexible  ")),



          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => rail()));
          }, child: Text(" Rail ")),

          Container(
            height: 100,
            color: Colors.purple,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => calculator()));
            }, child: Text(" Calculator ")),
          ),

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Colors.deepOrange)),
              height: 200,
              //color: Colors.purple,
              child: IconButton(
                icon: Icon(
                  Icons.account_balance,
                  size: 100,
                ),
                onPressed: () {
                  print("Icon button pressed...");
                },
              ),
            ),
          ),
          SizedBox(
            height: 300,
          )
        ],
      )),
    );
  }
}
