import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mysite/Resources.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key key,
    this.data,
  }) : super(key: key);

  final ProjectCardData data;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle descriptionStyle = theme.textTheme.subtitle1;

    return Card(
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
                  data.image,
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
          Padding(
              padding:
              const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child:
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: SelectableText(
                        data.title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    DefaultTextStyle(
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.subtitle1
                          .copyWith(color: AppColors.SECONDARY_GRAY),
                      child: SelectableText(
                        data.description,
                      ),
                    )
                  ]
              )
          )
        ],
      ),
    );
  }
}

class ProjectCardData {
  ProjectCardData(
      {this.image,
      this.title,
      this.description});

  final String image;
  final String title;
  final String description;
}
