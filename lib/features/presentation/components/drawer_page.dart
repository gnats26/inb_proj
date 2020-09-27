import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children:<Widget>[
          UserAccountsDrawerHeader(accountName: new Text('SDB - INB'),
            accountEmail: null,
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white
            ),
          ),
          Divider(),
          ListTile(
            title: Text('BIS Website'),
            trailing: Icon(Icons.web),
            onTap: (){
              // Navigator.of(context).pop();
              Navigator.of(context).popAndPushNamed("/bis");
            },
          ),
          ListTile(
            title: Text('About'),
            trailing: Icon(Icons.info),
          ),
          Divider(),
          ListTile(
            trailing: Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}