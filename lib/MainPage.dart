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
                        .apply(color: AppColors.PRIMARY_GRAY),
                  ),
                  SizedBox(height: 16),
                  Text(
                    Strings.ABOUT_DESC,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(height: 32),
                  Text('Experience',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .apply(color: AppColors.PRIMARY_GRAY)),
                  SizedBox(height: 16),
                  Card(
                    // This ensures that the Card's children are clipped correctly.
                    clipBehavior: Clip.antiAlias,
                    child: ExperienceCard(
                      data: ExperienceCardData(
                          title: Strings.OKC_TITLE,
                          image: "images/okcupid.png",
                          location: Strings.OKC_LOCATION,
                          dateString: Strings.OKC_DATES,
                          description: Strings.OKC_DESCRIPTION),
                    ),
                  ),
                  SizedBox(height: 12),
                  Card(
                    // This ensures that the Card's children are clipped correctly.
                    clipBehavior: Clip.antiAlias,
                    child: ExperienceCard(
                      data: ExperienceCardData(
                          title: Strings.EPIC_TITLE,
                          image: "images/epic.jpg",
                          location: Strings.EPIC_LOCATION,
                          dateString: Strings.EPIC_DATES,
                          description: Strings.EPIC_DESCRIPTION),
                    ),
                  ),
                  SizedBox(height: 12),
                  Card(
                    // This ensures that the Card's children are clipped correctly.
                    clipBehavior: Clip.antiAlias,
                    child: ExperienceCard(
                      data: ExperienceCardData(
                          title: Strings.WORK_MARKET_TITLE,
                          image: "images/workmarket.png",
                          location: Strings.WORK_MARKET_LOCATION,
                          dateString: Strings.WORK_MARKET_DATES,
                          description: Strings.WORK_MARKET_DESCRIPTION),
                    ),
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Projects',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .apply(color: AppColors.PRIMARY_GRAY),
                  ),
                  SizedBox(height: 16),
                  GridView.extent(
                    shrinkWrap: true,
                    childAspectRatio: .6,
                    maxCrossAxisExtent: 250,
                    children: <Widget>[
                      Card(
                        // This ensures that the Card's children are clipped correctly.
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Expanded(
                                  child: Image.asset(
                                    "images/joe_pic.jpg",
                                    fit: BoxFit.fill,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 16, 16, 16),
                                child: DefaultTextStyle(
                                    softWrap: false,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.subtitle1,
                                    child: SelectableText(
                                      "proj des ription descriptionde scriptionde scription",
                                    ),
                                )
                            )
                          ],
                        ),
                      ),
                      Card(
                          // This ensures that the Card's children are clipped correctly.
                          clipBehavior: Clip.antiAlias,
                          child: Text("Hi")),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Connect',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .apply(color: AppColors.PRIMARY_GRAY),
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
