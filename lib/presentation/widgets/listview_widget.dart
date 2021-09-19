import 'package:flutter/material.dart';
import 'package:stella_assignment/data/constants.dart';

class ListViewWidget extends StatelessWidget {
  final listData;
  const ListViewWidget({Key? key, this.listData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemBuilder: (context, index) => ListTile(
              title: Text(listData![index],
                  style: TextStyle(fontWeight: FontWeight.w600)),
              trailing: const Icon(
                Icons.chevron_right,
                color: dividerColor,
              ),
            ),
        separatorBuilder: (context, index) => const Divider(
              color: dividerColor,
              thickness: .5,
            ),
        itemCount: listData!.length);
  }
}
