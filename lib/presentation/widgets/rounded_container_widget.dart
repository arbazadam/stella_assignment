// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stella_assignment/data/app_data.dart';
import 'package:stella_assignment/data/constants.dart';
import 'package:stella_assignment/presentation/screens/reservation_screen.dart';

import 'checkin_checkout_container_widget.dart';
import 'listview_widget.dart';
import 'payment_info.dart';

class RoundedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = getSize(context).width;
    final screenHeight = getSize(context).height;
    final borderRadius = screenWidth * .05;
    return Container(
        color: scaffoldBackgroundColor,
        height: screenHeight,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CheckinCheckoutContainer(),
                    SizedBox(height: screenHeight * .05),
                    Padding(
                      padding: EdgeInsets.only(left: screenHeight * .02),
                      child: Text('Overiew',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18)),
                    ),
                    SizedBox(
                      height: screenHeight * .05,
                    ),
                    ListViewWidget(
                      listData: overviewTitle,
                    ),
                  ]),
            ),
            SizedBox(
              height: screenHeight * .03,
            ),
            Container(color: Colors.white, child: PaymentInfo())
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
