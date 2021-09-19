// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stella_assignment/data/app_data.dart';
import 'package:stella_assignment/presentation/screens/reservation_screen.dart';
import 'package:stella_assignment/presentation/widgets/QuickActionsContainer.dart';
import 'package:stella_assignment/presentation/widgets/button_widget.dart';

import 'data/constants.dart';
import 'presentation/screens/landing_screen.dart';
import 'presentation/screens/sliver_landing.dart';
import 'presentation/widgets/checkin_checkout_container_widget.dart';
import 'presentation/widgets/listview_widget.dart';
import 'presentation/widgets/payment_info.dart';
import 'presentation/widgets/quick_information.dart';
import 'presentation/widgets/rounded_container_widget.dart';
import 'presentation/widgets/screenshot_map.dart';
import 'presentation/widgets/textfield_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Gilroy',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = getSize(context).height;
    // return Scaffold(
    //     appBar: AppBar(),
    //     backgroundColor: Color(0xfff2f2f7),
    //     body: Center(child: ScreenshotMap()));
    return AdvancedSliverAppBar();
  }
}
