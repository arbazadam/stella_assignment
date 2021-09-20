// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:stella_assignment/data/constants.dart';
import 'package:stella_assignment/presentation/widgets/button_widget.dart';

class GetThereWidget extends StatelessWidget {
  const GetThereWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = getSize(context).height;
    final width = getSize(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Getting there',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22)),
        SizedBox(
          height: height * .02,
        ),
        Container(
          height: height * .34,
          child: Stack(
            children: [
              Center(
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.all(Radius.circular(height * .017)),
                  child: Image.asset(
                    'assets/images/ss-map.png',
                    fit: BoxFit.cover,
                    width: width * .9,
                  ),
                ),
              ),
              Positioned.fill(
                  child: Align(
                      alignment: Alignment.center, child: getCenterMarker())),
              Positioned.fill(
                  bottom: 0,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: width * .47,
                        height: getSize(context).height * .065,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffeeeeee),
                                  spreadRadius: 5,
                                  blurRadius: 15,
                                  offset: Offset(
                                      3, 5), // changes position of shadow
                                ),
                              ]),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                shape: MaterialStateProperty.all<StadiumBorder>(
                                    const StadiumBorder(side: BorderSide.none)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Get Directions',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )),
                        ),
                      )))
            ],
          ),
        ),
        SizedBox(
          height: height * .01,
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text('Address', style: TextStyle(fontWeight: FontWeight.w600)),
          subtitle: Padding(
            padding: EdgeInsets.only(top: height * .005),
            child: Text(
              '244 Rue Saint-Jacques, Montreal, QC, Canada',
              style: TextStyle(fontFamily: 'Poppins'),
            ),
          ),
          trailing: Padding(
            padding: EdgeInsets.only(top: height * .01),
            child: Icon(Icons.copy, color: secondaryChevronColor),
          ),
        )
      ],
    );
  }
}

Widget getCenterMarker() {
  return Container(
    child: Stack(
      children: [
        Image.asset('assets/images/vector.png'),
        Positioned(
            child: Image.asset('assets/images/house.png'), left: 21, top: 8)
      ],
    ),
  );
}
