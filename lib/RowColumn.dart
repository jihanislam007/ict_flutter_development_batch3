import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row column"),
      ),
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(
                height: MediaQuery.of(context).size.height/8,
                width: double.infinity,
                color: Colors.black26,
              ),

              //SizedBox(height: 50,),

              Row(
                children: [

                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                        border: Border.all(width: 2,color: Colors.red,
                        )
                    ),
                    height: MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/3,
                    child: Center(child: Text("1",style: TextStyle(fontSize: 24,color: Colors.white),)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                        border: Border.all(width: 2,color: Colors.red,
                        )
                    ),
                    height: MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/3,
                    child: Center(child: Text("1",style: TextStyle(fontSize: 24,color: Colors.white),)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                        border: Border.all(width: 2,color: Colors.red,
                        )
                    ),
                    height: MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/3,
                    child: Center(child: Text("1",style: TextStyle(fontSize: 24,color: Colors.white),)),
                  )

                ],
              ),
              Row(
                children: [

                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                        border: Border.all(width: 2,color: Colors.red,
                        )
                    ),
                    height: MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/3,
                    child: Center(child: Text("1",style: TextStyle(fontSize: 24,color: Colors.white),)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                        border: Border.all(width: 2,color: Colors.red,
                        )
                    ),
                    height: MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/3,
                    child: Center(child: Text("1",style: TextStyle(fontSize: 24,color: Colors.white),)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                        border: Border.all(width: 2,color: Colors.red,
                        )
                    ),
                    height: MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/3,
                    child: Center(child: Text("1",style: TextStyle(fontSize: 24,color: Colors.white),)),
                  )

                ],
              ),
              Row(
                children: [

                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                        border: Border.all(width: 2,color: Colors.red,
                        )
                    ),
                    height: MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/3,
                    child: Center(child: Text("1",style: TextStyle(fontSize: 24,color: Colors.white),)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                        border: Border.all(width: 2,color: Colors.red,
                        )
                    ),
                    height: MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/3,
                    child: Center(child: Text("1",style: TextStyle(fontSize: 24,color: Colors.white),)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                        border: Border.all(width: 2,color: Colors.red,
                        )
                    ),
                    height: MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/3,
                    child: Center(child: Text("1",style: TextStyle(fontSize: 24,color: Colors.white),)),
                  )

                ],
              ),
              Divider(thickness: 5,color: Colors.red,),
              Row(
                children: [

                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                        border: Border.all(width: 2,color: Colors.red,
                        )
                    ),
                    height: MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/3,
                    child: Center(child: Text("1",style: TextStyle(fontSize: 24,color: Colors.white),)),
                  ),

                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                        color: Colors.amber,
                        border: Border.all(width: 2,color: Colors.red,
                        )
                    ),
                    height: MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/1.8,
                    child: Center(child: Text("1",style: TextStyle(fontSize: 24,color: Colors.white),)),
                  )

                ],
              ),
              SizedBox(height: 50,),

            ],
          )
      ),
    );
  }
}
