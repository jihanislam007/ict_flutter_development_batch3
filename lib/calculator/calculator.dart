import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ict_flutter_development_batch3/calculator/custom_button.dart';

class calculator extends StatefulWidget {
  @override
  _calculatorState createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  late double firstnum, secondnum;

  late String texttoDisplay='';

  late String res, history='', operation;

  void btnOnClick(String btnval) {
    print(btnval);

    if (btnval == 'AC') {
      firstnum = 0;
      secondnum = 0;
      res = '';
      history = '';
    } else if (btnval == 'C') {
      firstnum = 0;
      secondnum = 0;
      res = '';
    } else if (btnval == '+' ||
        btnval == '-' ||
        btnval == '*' ||
        btnval == '/') {
      firstnum = double.parse(texttoDisplay);
      res = '';
      history=texttoDisplay;
      operation = btnval;
    }else if(btnval == "="){
      secondnum = double.parse(texttoDisplay);
      if(operation == "+"){
        res= (firstnum+secondnum).toString();
      }else if(operation == "-"){
        res= (firstnum-secondnum).toString();
      }else if(operation == "X"){
        res= (firstnum*secondnum).toString();
      }else if(operation == "/"){
        res= (firstnum/secondnum).toString();
      }

    }else{
      res = int.parse(texttoDisplay+btnval).toString();
    }

    setState(() {
      //res = texttoDisplay;
      texttoDisplay = res;
      //texttoDisplay = operation;
    });
    res= (firstnum/secondnum).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("calculator"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Text(
                  history,
                  style: GoogleFonts.rubik(
                      textStyle:
                          TextStyle(fontSize: 32, color: Color(0xFFB7B1B1))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Text(
                  texttoDisplay,
                  style: GoogleFonts.rubik(
                      textStyle:
                          TextStyle(fontSize: 48, color: Color(0xFF000000))),
                ),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                custom_button('AC', 0xFFFFFFFF, 32, 0xFFad65a8, btnOnClick),
                custom_button('C', 0xFFFFFFFF, 32, 0xFFad65a8, btnOnClick),
                custom_button('%', 0xFFFFFFFF, 32, 0xFFad65a8, btnOnClick),
                custom_button('/', 0xFFFFFFFF, 32, 0xFFfd62a1, btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                custom_button('7', 0xFFFFFFFF, 32, 0xFFad65a8b, btnOnClick),
                custom_button('8', 0xFFFFFFFF, 32, 0xFFad65a8b, btnOnClick),
                custom_button('9', 0xFFFFFFFF, 32, 0xFFad65a8, btnOnClick),
                custom_button('x', 0xFFFFFFFF, 32, 0xFFfd62a1, btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                custom_button('4', 0xFFFFFFFF, 32, 0xFFad65a8, btnOnClick),
                custom_button('5', 0xFFFFFFFF, 32, 0xFFad65a8, btnOnClick),
                custom_button('6', 0xFFFFFFFF, 32, 0xFFad65a8, btnOnClick),
                custom_button('-', 0xFFFFFFFF, 42, 0xFFfd62a1, btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                custom_button('1', 0xFFFFFFFF, 32, 0xFFad65a8, btnOnClick),
                custom_button('2', 0xFFFFFFFF, 32, 0xFFad65a8, btnOnClick),
                custom_button('3', 0xFFFFFFFF, 32, 0xFFad65a8, btnOnClick),
                custom_button('+', 0xFFFFFFFF, 32, 0xFFfd62a1, btnOnClick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                custom_button('00', 0xFFFFFFFF, 32, 0xFFad65a8, btnOnClick),
                custom_button('0', 0xFFFFFFFF, 32, 0xFFad65a8, btnOnClick),
                custom_button('.', 0xFFFFFFFF, 42, 0xFFad65a8, btnOnClick),
                custom_button('=', 0xFFFFFFFF, 32, 0xFFfd62a1, btnOnClick),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
