import 'package:flutter/material.dart';

class QuickInformation extends StatelessWidget {
  const QuickInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Quick informations',
      style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xff0f0f0f)),
    );
  }
}
