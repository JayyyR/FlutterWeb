import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mysite/Resources.dart';
import 'dart:html' as html;

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key key,
    this.data,
  }) : super(key: key);

  final ProjectCardData data;

  @override
  Widget build(BuildContext context) {
    return Card(
      // This ensures that the Card's children are clipped correctly.
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              if (data.urlToLoad != null) {
                html.window.open(data.urlToLoad, 'connect');
              }
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    data.image,
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: DefaultTextStyle(
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: Theme.of(context).textTheme.headline6,
                        child: Text(
                          data.title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ),
                    DefaultTextStyle(
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 6,
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                          color: AppColors.SECONDARY_GRAY, fontSize: 14),
                      child: SelectableText(
                        data.description,
                      ),
                    )
                  ]))
        ],
      ),
    );
  }
}

class ProjectCardData {
  ProjectCardData({this.image, this.title, this.description, this.urlToLoad});

  final String image;
  final String title;
  final String description;
  final String urlToLoad;
}
