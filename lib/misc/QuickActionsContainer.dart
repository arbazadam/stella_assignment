// ignore_for_file: prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:stella_assignment/data/constants.dart';

class QuickContainer extends StatelessWidget {
  final caption;
  final icon;
  const QuickContainer({this.caption, this.icon});

  @override
  Widget build(BuildContext context) {
    final height = getSize(context).height;
    final width = getSize(context).width;
    return Container(
      height: height * .06,
      width: width * .4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(37),
          color: const Color(0xffffffff).withOpacity(.4),
          border: Border.all(color: const Color(0xff9fb0b7).withOpacity(.4))),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: height * .027, right: height * .027),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$caption',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: height * .02)),
              Image.asset(
                'assets/images/direction-vector.png',
                height: height * .025,
                color: quickIconColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}

enum assetName { CheckIn, Parking, Directions }
