import 'package:flutter/material.dart';

import 'presentation/screens/sliver_landing.dart';

void main() => runApp(ParentApp());

class ParentApp extends StatelessWidget {
  const ParentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Gilroy'),
      home: AdvancedSliverAppBar(),
    );
  }
}
