import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mysite/Resources.dart';

class ExperienceCard extends StatelessWidget {

  const ExperienceCard({
    Key key,
    this.data,
  }) : super(key: key);

  final ExperienceCardData data;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle titleStyle =
        theme.textTheme.headline5.copyWith(color: Colors.white);
    final TextStyle descriptionStyle = theme.textTheme.subtitle1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 184,
          child: Stack(
            children: [
              Positioned.fill(
                // In order to have the ink splash appear above the image, you
                // must use Ink.image. This allows the image to be painted as
                // part of the Material and display ink effects above it. Using
                // a standard Image will obscure the ink splash.
                child: Ink.image(
                  image: AssetImage(data.image),
                  fit: BoxFit.cover,
                  child: Container(),
                ),
              ),
              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: SelectableText(
                    "title",
                    style: titleStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
        // Description and share/explore buttons.
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: DefaultTextStyle(
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            style: descriptionStyle,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: SelectableText(
                    data.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                SelectableText(data.city,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        .copyWith(color: AppColors.SECONDARY_GRAY)
                ),
                SelectableText(data.state,style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    .copyWith(color: AppColors.SECONDARY_GRAY)
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: SelectableText(
                    data.description,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ExperienceCardData{
  ExperienceCardData({this.image, this.title, this.city, this.state, this.description});

  final String image;
  final String title;
  final String city;
  final String state;
  final String description;
}
