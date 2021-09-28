import 'package:flutter/material.dart';

class Listtiles extends StatelessWidget {
  const Listtiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('''List tile'''),
      ),
      body: SafeArea(
          child: ListView(
            children: [

              ListTile(
                title: Text('''jomshed Ali college'''),
                tileColor: Colors.purple,
                isThreeLine: true,
                subtitle: Text('''Kushumhati\nsherpur\nsadarKushumhati\nsherpur\nsadar\nbangladesh'''),
                leading: CircleAvatar(child: Icon(Icons.account_balance_sharp)),
                trailing: Icon(Icons.account_balance_sharp),
              ),
              Divider(),
              ListTile(
                title: Text('''jomshed Ali college'''),
                tileColor: Colors.purple,
                subtitle: Text('''Kushumhati sherpur'''),
                leading: CircleAvatar(child: Icon(Icons.account_balance_sharp)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.account_balance),
                    GestureDetector(
                      child: Icon(Icons.delete,color: Colors.red,),
                      onTap: () {
                      },
                    ),
                  ],
                ),
                  onTap: (){},
              ),
              Divider(),
              ListTile(
                title: Text('''jomshed Ali college'''),
                tileColor: Colors.purple,
                subtitle: Text('''Kushumhati sherpur'''),
                leading: CircleAvatar(child: Icon(Icons.account_balance_sharp)),
                trailing: Icon(Icons.account_balance_sharp),
              ),
              Divider(),
              ListTile(
                title: Text('''jomshed Ali college'''),
                tileColor: Colors.purple,
                subtitle: Text('''Kushumhati sherpur'''),
                leading: CircleAvatar(child: Icon(Icons.account_balance_sharp)),
                trailing: Icon(Icons.account_balance_sharp),
              ),
              Divider(),
              ListTile(
                title: Text('''jomshed Ali college'''),
                tileColor: Colors.purple,
                subtitle: Text('''Kushumhati sherpur'''),
                leading: CircleAvatar(child: Icon(Icons.account_balance_sharp)),
                trailing: Icon(Icons.account_balance_sharp),
              ),ListTile(
                title: Text('''jomshed Ali college'''),
                tileColor: Colors.purple,
                subtitle: Text('''Kushumhati sherpur'''),
                leading: CircleAvatar(child: Icon(Icons.account_balance_sharp)),
                trailing: Icon(Icons.account_balance_sharp),
              ),ListTile(
                title: Text('''jomshed Ali college'''),
                tileColor: Colors.purple,
                subtitle: Text('''Kushumhati sherpur'''),
                leading: CircleAvatar(child: Icon(Icons.account_balance_sharp)),
                trailing: Icon(Icons.account_balance_sharp),
              ),

            ],
          )
      )
    );
  }
}
