// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:stella_assignment/data/constants.dart';

class PaymentInfo extends StatelessWidget {
  const PaymentInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = getSize(context).height;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment info',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: height * .04,
            ),
            getRow('\$170 x 8', '1,360.00 CAD'),
            SizedBox(height: height * .01),
            getRow('15% off - member rate', '-90.66 CAD'),
            SizedBox(height: height * .01),
            getRow('Cleaning fee', '35.00 CAD'),
            SizedBox(height: height * .01),
            getRow('Tax', '50.00 CAD'),
            SizedBox(height: height * .02),
            Divider(
              color: dividerColor,
              thickness: .7,
            ),
            SizedBox(height: height * .02),
            Row(children: [
              Text(
                'Total',
                style: TextStyle(
                    color: titleColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Text('1,354.33 CAD',
                  style: TextStyle(
                      color: titleColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
            ], mainAxisAlignment: MainAxisAlignment.spaceBetween),
            SizedBox(height: height * .01),
            Row(
              children: [
                Text('Total savings',
                    style: TextStyle(
                        color: totalTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 15)),
                Text(
                  '90.66 CAD',
                  style: TextStyle(
                      color: totalTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ],
        ),
      ),
    );
  }
}

Widget getRow(String col1, String col2) {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Text(
      col1,
      style: TextStyle(letterSpacing: .7, fontWeight: FontWeight.w600),
    ),
    Text(
      col2,
      style: TextStyle(letterSpacing: .7, fontWeight: FontWeight.w600),
    ),
  ]);
}
