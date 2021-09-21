// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:stella_assignment/data/constants.dart';
import 'package:stella_assignment/presentation/widgets/reservation_widget.dart';

import 'checkin_checkout_container_widget.dart';
import 'getting_there_widget.dart';
import 'overview_widget.dart';
import 'payment_info_widget.dart';

class ParentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = getSize(context).width;
    final screenHeight = getSize(context).height;

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
                    SizedBox(height: screenHeight * .06),
                    // getSizedBox(screenHeight),
                    OverViewWidget()
                  ]),
            ),
            getSizedBox(screenHeight),
            Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * .05,
                    right: screenWidth * .05,
                    top: screenHeight * .05,
                    bottom: screenHeight * .03,
                  ),
                  child: GetThereWidget(),
                )),
            getSizedBox(screenHeight),
            Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * .03,
                      vertical: screenHeight * .03),
                  child: ReservationWidget(),
                )),
            getSizedBox(screenHeight),
            Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * .03,
                      vertical: screenHeight * .03),
                  child: PaymentInfo(),
                )),
          ],
        ));
  }
}

Widget getSizedBox(double screenHeight) {
  return SizedBox(
    height: screenHeight * .02,
  );
}
