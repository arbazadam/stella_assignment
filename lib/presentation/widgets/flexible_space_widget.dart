// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stella_assignment/data/constants.dart';

import 'rounded_container_widget.dart';

class FlexibleSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = getSize(context).height;
    return Stack(
      children: [
        Positioned(
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/Landing image.png",
              ),
            ),
            top: 0,
            left: 0,
            right: 0,
            bottom: 0),
        Positioned(
            child: Icon(Icons.chevron_left, size: 40, color: Colors.white),
            top: height * .07,
            left: height * .008),
        Positioned(
          child: Text('Beautiful & Trendy 2  Floor Penthouse | Old MTL',
              style: TextStyle(color: Colors.white, fontSize: 25)),
          bottom: height * .08,
          left: height * .02,
        ),
        Positioned(
          bottom: height * .05,
          left: height * .02,
          child: Row(
            children: [
              Text('4 Bedrooms',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              SizedBox(width: 10),
              getRoundedCircularContainer(),
              SizedBox(width: 10),
              Text('4.5 Bathrooms',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              SizedBox(width: 10),
              getRoundedCircularContainer(),
              SizedBox(width: 10),
              Text('10 Guests',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}

Widget getRoundedCircularContainer() {
  return Container(
    height: 7,
    width: 7,
    decoration: BoxDecoration(
        color: Color(0xffffffff),
        border: Border.all(),
        borderRadius: BorderRadius.circular(
            20) // use instead of BorderRadius.all(Radius.circular(20))
        ),
  );
}
