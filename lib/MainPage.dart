import 'package:flutter/material.dart';

import 'Resources.dart';
import 'ConnectRow.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 700),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(child: Header()),
                  Divider(height: 32),
                  Text(
                    'About',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .apply(color: AppColors.PRIMARY_RED),
                  ),
                  SizedBox(height: 16),
                  Text(
                    about,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Connect',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .apply(color: AppColors.PRIMARY_RED),
                  ),
                  SizedBox(height: 16),
                  ConnectRow(data: accounts[0]),
                  ConnectRow(data: accounts[1])
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final isSmall = constraints.biggest.width < 560;

          final image = Container(
            constraints: BoxConstraints(maxHeight: isSmall ? 150 : 250),
            child: Material(
              clipBehavior: Clip.antiAlias,
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(width: 4, color: Colors.white),
              ),
              child: Image.asset('images/joe_pic.jpg'),
            ),
          );

          final headline = Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:
            isSmall ? CrossAxisAlignment.center : CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Joe Acosta',
                style: isSmall
                    ? Theme.of(context)
                    .textTheme
                    .headline4
                    .apply(color: AppColors.PRIMARY_RED)
                    : Theme.of(context)
                    .textTheme
                    .headline3
                    .apply(color: AppColors.PRIMARY_RED),
              ),
              Text(
                'Engineering Manager  •  Software Engineer',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          );

          if (isSmall) {
            return Column(
              children: <Widget>[
                image,
                SizedBox(height: 16),
                headline,
              ],
            );
          } else {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: image,
                ),
                SizedBox(width: 32),
                Flexible(
                  flex: 2,
                  child: headline,
                ),
              ],
            );
          }
        });
  }
}



final String about = "Hey there, I'm Joe.\n\nWhen I'm not writing software, I'm studying and "
    "performing improv with the People's Improv Theater here in "
    "NYC. I'm also an aspiring guitar player, avid gamer, big "
    "movie buff, attempted world traveler, and a loving catowner.";

final List<SocialData> accounts = [
  SocialData(
    icon: 'images/icon-github.png',
    text: 'JayyyR',
    url: 'http://github.com/JayyyR',
  ),
  SocialData(
    icon: 'images/icon-linkedin.png',
    text: 'Joe Acosta',
    url: 'https://www.linkedin.com/in/joe-acosta-6007704b/',
  ),
];

