// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stella_assignment/data/constants.dart';
import 'package:stella_assignment/presentation/widgets/button_widget.dart';

class ScreenshotMap extends StatelessWidget {
  const ScreenshotMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = getSize(context).height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Getting there'),
        SizedBox(
          height: height * .02,
        ),
        Container(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(height * .017)),
                child: Image.asset('assets/images/ss-map.png'),
              ),
              Positioned.fill(
                  child: Align(
                      alignment: Alignment.center, child: getCenterMarker())),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: ButtonWidget('buttonCaption'),
              ))
            ],
          ),
        )
      ],
    );
  }
}

Widget getCenterMarker() {
  return Container(
    child: Align(
      alignment: Alignment.center,
      child: Image.asset('assets/images/house.png'),
    ),
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/vector.png'))),
  );
}
