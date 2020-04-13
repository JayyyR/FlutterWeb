import 'package:flutter/material.dart';
import 'package:mysite/EducationCard.dart';
import 'package:mysite/ProjectCard.dart';

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
                    childAspectRatio: .5,
                    maxCrossAxisExtent: 250,
                    children: <Widget>[
                      ProjectCard(
                        data: ProjectCardData(
                            title: Strings.WEBSITE_TITLE,
                            description: Strings.WEBSITE_DESCRIPTION,
                            image: "images/flutter.png",
                            urlToLoad: "https://github.com/JayyyR/FlutterWeb"),
                      ),
                      ProjectCard(
                        data: ProjectCardData(
                            title: Strings.CALORIE_COUNTER_TITLE,
                            description: Strings.CALORIE_COUNTER_DESCRIPTION,
                            image: "images/calorie_counter.jpg",
                            urlToLoad: "https://play.google.com/store/apps/details?id=com.joeracosta.caloriecounter"),
                      ),
                      ProjectCard(
                        data: ProjectCardData(
                            title: Strings.UGLY_WEATHER_TITLE,
                            description: Strings.UGLY_WEATHER_DESCRIPTION,
                            image: "images/ugly_weather.png",
                            urlToLoad: "https://play.google.com/store/apps/details?id=com.joeracosta.uglyweather"),
                      ),
                      ProjectCard(
                        data: ProjectCardData(
                            title: Strings.SIMPLE_FRAGMENTS_TITLE,
                            description: Strings.SIMPLE_FRAGMENTS_DESCRIPTION,
                            image: "images/github.png",
                            urlToLoad: "https://github.com/JayyyR/SimpleFragments"),
                      ),
                      ProjectCard(
                        data: ProjectCardData(
                            title: Strings.PLEXPY_MONITOR_TITLE,
                            description: Strings.PLEXPY_MONITOR_DESCRIPTION,
                            image: "images/plex.png",
                            urlToLoad: "https://github.com/JayyyR/PlexPyMonitor"),
                      ),
                      ProjectCard(
                        data: ProjectCardData(
                            title: Strings.BUFF_BUDDY_TITLE,
                            description: Strings.BUFF_BUDDY_DESCRIPTION,
                            image: "images/buffbuddy.jpg",
                            urlToLoad: "https://play.google.com/store/apps/details?id=com.jayr.buffbuddy"),
                      ),
                      ProjectCard(
                        data: ProjectCardData(
                            title: Strings.PANCAKESONPLATES_TITLE,
                            description: Strings.PANCAKESONPLATES_DESCRIPTION,
                            image: "images/github.png",
                            urlToLoad: "https://github.com/JayyyR/PancakesOnPlates"),
                      ),
                      ProjectCard(
                        data: ProjectCardData(
                            title: Strings.GIFJAM_TITLE,
                            description: Strings.GIFJAM_DESCRIPTION,
                            image: "images/tribehacks.jpg",
                            urlToLoad: "https://www.youtube.com/watch?v=RPH5ekb9biw"),
                      ),
                      ProjectCard(
                        data: ProjectCardData(
                            title: Strings.MARSH_MATT_TITLE,
                            description: Strings.MARSH_MATT_DESCRIPTION,
                            image: "images/marshmallow_matt.jpg",
                            urlToLoad: "https://play.google.com/store/apps/details?id=com.jr.matt"),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Education',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .apply(color: AppColors.PRIMARY_GRAY),
                  ),
                  SizedBox(height: 16),
                  EducationCard(
                    data: EducationCardData(
                      image: "images/college_wm.png",
                      title: Strings.WILLIAM_AND_MARY,
                      dateString: Strings.WILLIAM_AND_MARY_DATES,
                      description: Strings.WILLIAM_AND_MARY_DESCRIPTION
                    ),
                  ),
                  SizedBox(height: 12),
                  EducationCard(
                    data: EducationCardData(
                        image: "images/mason_school.png",
                        title: Strings.WM_BUSINESS,
                        dateString: Strings.WM_BUSINESS_DATES,
                        description: Strings.WM_BUSINESS_DESCRIPTION
                    ),
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
