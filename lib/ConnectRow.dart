import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class SocialData {
  SocialData({this.icon, this.text, this.url});

  final String icon;
  final String text;
  final String url;
}

class ConnectRow extends StatelessWidget {
  const ConnectRow({
    Key key,
    this.data,
  }) : super(key: key);

  final SocialData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () {
          html.window.open(data.url, 'connect');
        },
        child: Row(
          children: <Widget>[
            Image.asset(
              data.icon,
              width: 40,
            ),
            SizedBox(width: 8),
            Text(
              data.text,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}