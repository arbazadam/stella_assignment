// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stella_assignment/data/constants.dart';
import 'package:stella_assignment/presentation/widgets/button_widget.dart';

class GetThereWidget extends StatelessWidget {
  const GetThereWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = getSize(context).height;
    final width = getSize(context).width;
    return Padding(
      padding: EdgeInsets.only(
          top: height * .04,
          bottom: height * .02,
          left: height * .02,
          right: height * .02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Getting there',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22)),
          SizedBox(
            height: height * .02,
          ),
          Container(
            height: height * .32,
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
                          child: ElevatedButton(
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(5),
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
                        )))
              ],
            ),
          ),
          SizedBox(
            height: height * .005,
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('Address'),
            subtitle: Container(
              child: Text('244 Rue Saint-Jacques, Montreal, QC, Canada'),
            ),
            trailing: Icon(Icons.copy, color: secondaryChevronColor),
          )
        ],
      ),
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

//  decoration: BoxDecoration(
//         image: DecorationImage(image: AssetImage('assets/images/vector.png'))),