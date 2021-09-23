import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row column"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 150,
                    color: Colors.deepOrange,
                    child: Center(child: Text("1",style: TextStyle(fontSize: 40,color: Colors.white),)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 80,
                    width: 150,
                    color: Colors.deepOrange,
                    child: Center(child: Text("2",style: TextStyle(fontSize: 40,color: Colors.white),)),
                  )

                ],
              ),

              SizedBox(height: 20,),

              Container(
                height: 100,
                width: double.infinity,
                color: Colors.deepOrange,
                child: Center(child: Text("3",style: TextStyle(fontSize: 40,color: Colors.white),)),
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.deepOrange,
                    child: Center(child: Text("4",style: TextStyle(fontSize: 40,color: Colors.white),)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.deepOrange,
                    child: Center(child: Text("5",style: TextStyle(fontSize: 40,color: Colors.white),)),
                  ),

                  SizedBox(width: 20,),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.deepOrange,
                    child: Center(child: Text("6",style: TextStyle(fontSize: 40,color: Colors.white),)),
                  )

                ],
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Container(
                    height: 100,
                    width: 250,
                    color: Colors.deepOrange,
                    child: Center(child: Text("7",style: TextStyle(fontSize: 40,color: Colors.white),)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.deepOrange,
                    child: Center(child: Text("8",style: TextStyle(fontSize: 40,color: Colors.white),)),
                  )

                ],
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.deepOrange,
                    child: Center(child: Text("9",style: TextStyle(fontSize: 40,color: Colors.white),)),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 100,
                    width: 250,
                    color: Colors.deepOrange,
                    child: Center(child: Text("10",style: TextStyle(fontSize: 40,color: Colors.white),)),
                  )

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
