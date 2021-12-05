import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:ict_flutter_development_batch3/Auth/profile.dart';

import 'signup.dart';

class login extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 200,
                  child: FlareActor(
                    'animation/Teddy.flr',
                    alignment: Alignment.center,
                    fit: BoxFit.fill,
                    animation: 'test',
                  )),

              SizedBox(height: 50,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    icon: Icon(Icons.account_box),
                    hintText: 'Enter your Name',
                    //floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'password',
                    icon: Icon(Icons.vpn_key_rounded),
                    hintText: 'Enter your Password',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
                  },
                  child: Text('Forgot Password'),
                ),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF0CE87A)),
                child: TextButton(
                  onPressed: () {},
                  child: Text('Sign In'),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => signup()));
                  },
                  child: Text('''haven't Account? Sign up'''))
            ],
          ),
        ),
      ),
    );
  }
}
