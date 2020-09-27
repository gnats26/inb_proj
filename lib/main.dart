import 'package:flutter/material.dart';
import 'features/pages/bis_page.dart';
import 'features/presentation/components/drawer_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INB Prov',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        '/bis': (BuildContext context) => BISPage(),
      },
      home: SafeArea(
        child: HomePage(),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: DrawerPage(),
        body: Center(child: Text('THis is text')),

      ),
    );
  }
}