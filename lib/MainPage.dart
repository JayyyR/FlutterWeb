import 'package:flutter/material.dart';

import 'ExperienceCard.dart';
import 'Header.dart';
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
                    Strings.ABOUT_DESC,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(height: 32),
                  Text('Experience',style: Theme.of(context)
                      .textTheme
                      .headline4
                      .apply(color: AppColors.PRIMARY_RED)
                  ),
                  SizedBox(height: 16),
                  Card(
                    // This ensures that the Card's children are clipped correctly.
                    clipBehavior: Clip.antiAlias,
                    child: ExperienceCard(
                      data: ExperienceCardData(
                        title: "Engineering Manager - Android",
                        image: "images/okcupid.png",
                        city: "New York",
                        state: "NY",
                        description: "description"
                      ),
                    ),
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
