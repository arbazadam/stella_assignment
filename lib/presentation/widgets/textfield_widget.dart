// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stella_assignment/data/constants.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = getSize(context).height;
    return TextField(
      maxLines: 6,
      decoration: InputDecoration(
        hintText: 'Message Placeholder',
        hintStyle: TextStyle(fontFamily: 'Poppins'),
        border: OutlineInputBorder(
          borderSide:
              const BorderSide(color: chevronRightIconColor, width: 1.0),
          borderRadius: BorderRadius.circular(height * .01),
        ),
      ),
    );
  }
}
