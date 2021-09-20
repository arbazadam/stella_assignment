// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:stella_assignment/data/constants.dart';

class CheckinCheckoutContainer extends StatelessWidget {
  const CheckinCheckoutContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = getSize(context).height;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(height * .015),
          border: Border.all(color: const Color(0xff9fb0b7).withOpacity(.4))),
      height: height * .12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          getContainerContent(
              'Check-in', 'Saturday, July 3', '4:00 PM', height * .12 / 8),
          VerticalDivider(
            color: dividerColor,
            thickness: .5,
          ),
          getContainerContent(
              'Check-out', 'Friday, July 9', '11:00 AM', height * .12 / 8),
        ],
      ),
    );
  }
}

Widget getContainerContent(
    String title, String date, String time, double height) {
  return Padding(
    padding: EdgeInsets.only(top: height),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontWeight: FontWeight.w400)),
        SizedBox(height: height),
        Text(date, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
        Text(
          time,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}
