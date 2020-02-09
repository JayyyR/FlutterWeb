import 'package:flutter/material.dart';

import 'Resources.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.JOE_ACOSTA,
      theme: ThemeData(
          primaryColor: AppColors.PRIMARY_RED,
          accentColor: AppColors.SECONDARY_GRAY
      ),
      home:Scaffold(
        appBar: AppBar(
          title: Text(Strings.JOE_ACOSTA),
          actions: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: FlatButton(
                  child: Text("Experience"),
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: FlatButton(
                  child: Text("Projects"),
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.0),
            )
          ],
        ),
        body: Container(
          child: Container(
            height: 20,
            color: AppColors.PRIMARY_RED,
          ),


        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      )
    );

  }
}
