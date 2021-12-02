import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  DateTime? _dateTime;

  int radiaovalue = 0;

  List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  String? _selectedLocation; // Option 2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      getdate();
                    },
                    icon: Icon(Icons.date_range)),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Color(0xFF9C9191))),
                      child: Center(
                          child: _dateTime == null
                              ? Text('Date : DD-MM-YYYY')
                              : Text(
                                  'Date : ${_dateTime!.day}-${_dateTime!.month}-${_dateTime!.year}'))),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: radiaovalue,
                        onChanged: (value){
                          setState(() {
                            radiaovalue = value as int;
                          });
                        }),
                    Text('Male')
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: radiaovalue,
                        onChanged: (value){
                          setState(() {
                            radiaovalue = value as int;
                          });
                        }),
                    Text('FeMale')
                  ],
                ),
              ],
            ),

            Center(
              child: DropdownButton(
                hint: Text(
                    'Please choose a location'), // Not necessary for Option 1
                value: _selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    _selectedLocation = newValue.toString();
                  });
                },
                items: _locations.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF0CE87A)),
              child: TextButton(
                onPressed: () {
                  //gender();
                  print(_selectedLocation.toString());
                  Fluttertoast.showToast(
                      msg: _selectedLocation.toString(),
                      toastLength: Toast.LENGTH_LONG);
                },
                child: Text('Sign Up'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  getdate() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year - 50),
        lastDate: DateTime(DateTime.now().year + 5));

    setState(() {
      _dateTime = date;
    });
  }

  gender(){
    if(radiaovalue==1){
      Fluttertoast.showToast(
          msg: 'Male',
          toastLength: Toast.LENGTH_LONG);

    }else if(radiaovalue==2){
      Fluttertoast.showToast(
          msg: 'FeMale',
          toastLength: Toast.LENGTH_LONG);
    }else{
      Fluttertoast.showToast(
          msg: 'Please Select your gender',
          toastLength: Toast.LENGTH_LONG);
    }
  }
}
