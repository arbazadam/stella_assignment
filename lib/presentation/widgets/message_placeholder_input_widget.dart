// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stella_assignment/data/constants.dart';

class MessagePlaceHolderInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = getSize(context).height;
    return TextField(
      maxLines: 6,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            vertical: height * .017, horizontal: height * .02),
        hintText: 'Message Placeholder',
        hintStyle:
            TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w400),
        border: OutlineInputBorder(
          borderSide:
              const BorderSide(color: chevronRightIconColor, width: 1.0),
          borderRadius: BorderRadius.circular(height * .01),
        ),
      ),
    );
  }
}
