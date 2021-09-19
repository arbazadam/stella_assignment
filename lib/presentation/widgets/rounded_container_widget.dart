// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stella_assignment/data/app_data.dart';
import 'package:stella_assignment/data/constants.dart';

import 'checkin_checkout_container_widget.dart';
import 'listview_widget.dart';

class RoundedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = getSize(context).width;
    final screenHeight = getSize(context).height;
    final borderRadius = screenWidth * .05;
    return Container(
        padding: EdgeInsets.fromLTRB(borderRadius, 10, borderRadius, 0),
        //width: screenWidth,
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(borderRadius),
              topRight: Radius.circular(borderRadius),
            )),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Padding(
              padding: EdgeInsets.only(top: screenHeight * .007),
              child: getSmallContainer(context),
            )),
            SizedBox(height: screenHeight * .05),
            CheckinCheckoutContainer(),
            SizedBox(height: screenHeight * .05),
            Padding(
              padding: EdgeInsets.only(left: screenHeight * .02),
              child: Text('Overiew',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
            ),
            SizedBox(
              height: screenHeight * .05,
            ),
            ListViewWidget(
              listData: overviewTitle,
            ),
          ],
        ));
  }
}

Widget getSmallContainer(BuildContext context) {
  final width = getSize(context).width;
  final height = getSize(context).height;
  return Container(
    decoration: BoxDecoration(
        color: smallDivider, borderRadius: BorderRadius.circular(22)),
    height: height * .006,
    width: width * .15,
  );
}
