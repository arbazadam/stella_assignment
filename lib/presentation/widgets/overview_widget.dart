import 'package:flutter/material.dart';
import 'package:stella_assignment/data/app_data.dart';
import 'package:stella_assignment/data/constants.dart';

class OverViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemBuilder: (context, index) => ListTile(
              title: Text(overviewTitle[index],
                  style: const TextStyle(fontWeight: FontWeight.w600)),
              trailing: const Icon(
                Icons.chevron_right,
                color: dividerColor,
              ),
            ),
        separatorBuilder: (context, index) => const Divider(
              color: dividerColor,
              thickness: .5,
              indent: 5,
              endIndent: 5,
            ),
        itemCount: overviewTitle.length);
  }
}
