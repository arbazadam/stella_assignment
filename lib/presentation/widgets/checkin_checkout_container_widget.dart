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
          getContainerContent('Check-in', 'Saturday, July 3', '4:00 PM'),
          VerticalDivider(
            color: dividerColor,
            thickness: .5,
          ),
          getContainerContent('Check-in', 'Saturday, July 3', '4:00 PM'),
        ],
      ),
    );
  }
}

Widget getContainerContent(String title, String date, String time) {
  return Padding(
    padding: const EdgeInsets.only(top: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        SizedBox(height: 10),
        Text(date, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
        Text(
          time,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}

Widget getDirections() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: const Color(0xff9fb0b7).withOpacity(.4))),
    height: 50,
    width: 200,
    child: Center(
      child: Text(
        'Get Directions',
        style: TextStyle(
            color: titleColor, fontWeight: FontWeight.w600, fontSize: 15),
      ),
    ),
  );
}

Widget getIcon() {
  return Icon(
    Icons.copy,
    color: Color(0xff7c959e),
    size: 40,
  );
}
