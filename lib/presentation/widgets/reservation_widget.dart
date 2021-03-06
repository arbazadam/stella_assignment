// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:stella_assignment/data/app_data.dart';
import 'package:stella_assignment/data/constants.dart';
import 'package:stella_assignment/presentation/screens/parent_landing_screen.dart';
import 'package:stella_assignment/presentation/widgets/button_widget.dart';
import 'package:stella_assignment/presentation/widgets/message_placeholder_input_widget.dart';

class ReservationWidget extends StatelessWidget {
  const ReservationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = getSize(context).height;
    final width = getSize(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        getHeaderSection(height),
        SizedBox(
          height: height * .03,
        ),
        Divider(
          color: dividerColor,
          thickness: .5,
          indent: width * .03,
          endIndent: width * .03,
        ),
        Container(
          child: ListView.separated(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => getTile(
                reservationRules.keys.elementAt(index),
                reservationRules.values.elementAt(index),
                height * .07,
                context),
            separatorBuilder: (context, index) => Divider(
              color: dividerColor,
              thickness: .5,
              indent: width * .03,
              endIndent: width * .03,
            ),
            itemCount: reservationRules.length,
          ),
        ),
      ],
    );
  }
}

Widget getTile(String title, String subtitle, iconSize, BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0),
    child: ListTile(
      onTap: title == "Special request"
          ? () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  context: context,
                  builder: (modalContext) =>
                      getBottomSheetContent(modalContext));
            }
          : null,
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: Text(
          subtitle,
          style: TextStyle(
              color: title == 'Confirmation code' ? Color(0xff0f0f0f) : null,
              fontWeight:
                  title == 'Confirmation code' ? FontWeight.w400 : null),
        ),
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Icon(
            title == 'Confirmation code' ? Icons.copy : Icons.chevron_right,
            color: secondaryChevronColor,
            size: 30),
      ),
    ),
  );
}

Widget getHeaderSection(double height) {
  return Padding(
    padding: EdgeInsets.only(left: height * .015, right: height * .015),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Reservation Details',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: height * .05),
        Text(
          'Who\'s coming',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        Padding(
          padding: EdgeInsets.only(top: height * .01),
          child: Row(
            children: [
              Text('4 adults, 2 infants'),
              Text(
                'Update guests and visitors',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w700),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
      ],
    ),
  );
}

Widget getBottomSheetContent(BuildContext context) {
  final height = getSize(context).height;
  return Container(
    height: height * .47,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: getSmallContainer(context)),
          SizedBox(
            height: height * .03,
          ),
          Text(
            'Special Request',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: height * .007,
          ),
          Container(
            width: getSize(context).width * .85,
            child: Text(
                'Quisque ipsum nibh, euismod auctor sapien a, commodo sollicitudin ligula. In lorem ex, interdum vel arcu id, lacinia tincidunt.'),
          ),
          SizedBox(
            height: height * .02,
          ),
          MessagePlaceHolderInput(),
          SizedBox(
            height: height * .03,
          ),
          ButtonWidget('Send it')
        ],
      ),
    ),
  );
}
