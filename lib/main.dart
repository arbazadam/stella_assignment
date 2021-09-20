import 'package:flutter/material.dart';

import 'presentation/screens/parent_landing_screen.dart';

void main() => runApp(ParentApp());

class ParentApp extends StatelessWidget {
  const ParentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Gilroy'),
      home: CustomSliverScreen(),
    );
  }
}
