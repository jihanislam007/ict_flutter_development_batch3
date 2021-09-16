import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: PageOne()
              //SecondPage()

        );
  }
}

class PageOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                alignment: Alignment.centerRight,
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
                    textStyle: TextStyle(fontSize: 32)// foreground
                  ),
                  onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
              }, child: Text('Push Me')),

              TextButton(onPressed: (){}, child: Text("TextButton")),

              OutlinedButton(onPressed: (){}, child: Text('OutLined Button'))

            ],
          )),
    );
  }
}

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
