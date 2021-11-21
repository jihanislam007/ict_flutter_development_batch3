import 'package:flutter/material.dart';
import 'package:ict_flutter_development_batch3/railSeba/custom_widget.dart';

class rail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7a87fa),
      appBar: AppBar(
        title: Text("Rail sheba"),
      ),
      
      body: SafeArea(
        child: Column(
          children: [
            
            Container(
              //height: 200,
              child: Image.network('https://www.tbsnews.net/sites/default/files/styles/very_big_1/public/images/2020/05/04/train.jpg?itok=ZKJIU4U7',fit: BoxFit.fitWidth,),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                custom_widget('https://static.thenounproject.com/png/2900131-200.png',"Purchase"),
                custom_widget('https://www.tbsnews.net/sites/default/files/styles/very_big_1/public/images/2020/05/04/train.jpg?itok=ZKJIU4U7','Ticket'),
                custom_widget('https://static.thenounproject.com/png/2900131-200.png','Sherpur')

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                custom_widget('https://www.tbsnews.net/sites/default/files/styles/very_big_1/public/images/2020/05/04/train.jpg?itok=ZKJIU4U7','Dhaka'),
                custom_widget('https://static.thenounproject.com/png/2900131-200.png','Bangladesh'),
                custom_widget('https://www.tbsnews.net/sites/default/files/styles/very_big_1/public/images/2020/05/04/train.jpg?itok=ZKJIU4U7','America')

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                custom_widget('https://static.thenounproject.com/png/2900131-200.png','India'),
                custom_widget('https://www.tbsnews.net/sites/default/files/styles/very_big_1/public/images/2020/05/04/train.jpg?itok=ZKJIU4U7','Russia'),
                custom_widget('https://static.thenounproject.com/png/2900131-200.png','canada')

              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
