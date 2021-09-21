// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stella_assignment/data/app_data.dart';
import 'package:stella_assignment/data/constants.dart';

class OverViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = getSize(context).width;
    final screenHeight = getSize(context).height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: screenHeight * .02),
          child: Text('Overiew',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22)),
        ),
        SizedBox(height: screenHeight * .03),
        Container(
          child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemBuilder: (context, index) => ListTile(
                    title: Text(overviewTitle[index],
                        style: const TextStyle(fontWeight: FontWeight.w600)),
                    trailing: Icon(
                      Icons.chevron_right,
                      color: dividerColor,
                      size: width * .08,
                    ),
                  ),
              separatorBuilder: (context, index) => Divider(
                    color: dividerColor,
                    thickness: .5,
                    indent: width * .04,
                    endIndent: width * .05,
                  ),
              itemCount: overviewTitle.length),
        ),
      ],
    );
  }
}
