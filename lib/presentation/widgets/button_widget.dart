import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stella_assignment/data/constants.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonCaption;
  ButtonWidget(this.buttonCaption);

  @override
  Widget build(BuildContext context) {
    //  var screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: getSize(context).height * .075,
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<StadiumBorder>(
                const StadiumBorder(side: BorderSide.none)),
            backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child: Text(
            buttonCaption,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          onPressed: () {}),
    );
  }
}
