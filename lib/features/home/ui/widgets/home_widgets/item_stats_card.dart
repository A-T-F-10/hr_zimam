import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';

// ignore: must_be_immutable
class ItemStatsCard extends StatelessWidget {
  ItemStatsCard(
      {super.key,
      required this.styleTitle,
      required this.styleDoc,
      required this.title,
      required this.num});
  TextStyle styleTitle;
  TextStyle styleDoc;
  String num;
  String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            num,
            style: styleTitle,
          ),
          verticalSpace(5),
          Text(
            title,
            style: styleDoc,
          )
        ],
      ),
    );
  }
}
