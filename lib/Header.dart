
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Resources.dart';

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
              SelectableText(
                'Joe Acosta',
                style: isSmall
                    ? Theme.of(context)
                    .textTheme
                    .headline4
                    .apply(color: AppColors.PRIMARY_GRAY)
                    : Theme.of(context)
                    .textTheme
                    .headline3
                    .apply(color: AppColors.PRIMARY_GRAY),
              ),
              SelectableText(
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
