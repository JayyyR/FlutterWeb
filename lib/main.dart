import 'package:flutter/material.dart';
import 'package:mysite/MainPage.dart';

import 'Resources.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  final aboutKey = GlobalKey();
  final experienceKey = GlobalKey();
  final projectsKey = GlobalKey();
  final educationKey = GlobalKey();
  final connectKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.JOE_ACOSTA,
      theme: ThemeData(
          primaryColor: AppColors.PRIMARY_GRAY,
          accentColor: AppColors.SECONDARY_GRAY,
          textTheme: Typography.blackMountainView.apply(fontFamily: 'Open Sans'),
      ),
      home:Scaffold(
        appBar: AppBar(
          title: Text(Strings.JOE_ACOSTA),
          actions: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: FlatButton(
                  child: Text("About"),
                  textColor: Colors.white,
                  onPressed: () {
                    Scrollable.ensureVisible(aboutKey.currentContext);
                  },
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: FlatButton(
                  child: Text("Experience"),
                  textColor: Colors.white,
                  onPressed: () {
                    Scrollable.ensureVisible(experienceKey.currentContext);},
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: FlatButton(
                  child: Text("Projects"),
                  textColor: Colors.white,
                  onPressed: () {
                    Scrollable.ensureVisible(projectsKey.currentContext);},
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: FlatButton(
                  child: Text("Education"),
                  textColor: Colors.white,
                  onPressed: () {
                    Scrollable.ensureVisible(educationKey.currentContext);},
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: FlatButton(
                  child: Text("Connect"),
                  textColor: Colors.white,
                  onPressed: () {
                    Scrollable.ensureVisible(connectKey.currentContext);},
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.0),
            )
          ],
        ),
        body: MainPage(
          aboutKey: aboutKey,
          experienceKey: experienceKey,
          projectsKey: projectsKey,
          educationKey: educationKey,
          connectKey: connectKey,
        )
      )
    );

  }
}
