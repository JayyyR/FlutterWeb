import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mysite/Resources.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({
    Key key,
    this.data,
  }) : super(key: key);

  final EducationCardData data;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle descriptionStyle = theme.textTheme.subtitle1;

    return SizedBox(
      height: 200,
      child: Card(
          // This ensures that the Card's children are clipped correctly.
          clipBehavior: Clip.antiAlias,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 200,
                height: 200,
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
                  ],
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                  child: DefaultTextStyle(
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: descriptionStyle,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: SelectableText(
                            data.title,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 1),
                          child: SelectableText(data.dateString,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  .copyWith(
                                      color: AppColors.TERTIARY_GRAY,
                                      fontSize: 12)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: SelectableText(
                            data.description,
                            style: Theme.of(context).textTheme.subtitle1.copyWith(
                              fontSize: 15
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class EducationCardData {
  EducationCardData(
      {this.image, this.title, this.dateString, this.description});

  final String image;
  final String title;
  final String dateString;
  final String description;
}
