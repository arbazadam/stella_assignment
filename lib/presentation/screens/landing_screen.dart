// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stella_assignment/data/constants.dart';
import 'package:stella_assignment/presentation/widgets/rounded_container_widget.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = getSize(context).height;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/Landing image.png',
              ))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: height * .7,
            child: Stack(children: [
              Positioned(
                top: height * .07,
                left: height * .008,
                child: Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              Positioned(
                  child: getPropertyDetails(), bottom: 0, left: height * .008)
            ]),
          ),
        ],
      ),
    );
  }
}

Widget getPropertyDetails() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Your stay at', style: getTextStyle()),
      Text('Beautiful & Trendy 2', style: getTextStyle()),
      Text('Floor Penthouse | Old MTL', style: getTextStyle()),
    ],
  );
}

TextStyle getTextStyle() {
  return TextStyle(
      color: Colors.white, fontSize: 23, fontWeight: FontWeight.w600);
}
