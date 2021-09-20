// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stella_assignment/data/constants.dart';
import 'package:stella_assignment/presentation/widgets/rounded_container_widget.dart';

class AdvancedSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = getSize(context).height;
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: CustomSliverAppBarDelegate(height * .7),
            pinned: true,
          ),
          SliverToBoxAdapter(child: RoundedContainer())
        ],
      ),
    );
  }
}

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  var height;
  CustomSliverAppBarDelegate(
    this.expandedHeight,
  );

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    height = getSize(context).height;
    final size = height * .06;
    final top = expandedHeight - shrinkOffset - size / 2;

    return Stack(
      fit: StackFit.expand,
      children: [
        buildBackground(shrinkOffset),
        buildAppBar(shrinkOffset),
        Positioned(
            child: disappearingWidget(shrinkOffset,
                Icon(Icons.chevron_left, size: 40, color: Colors.white)),
            top: height * .07,
            left: height * .008),
        Positioned(
          bottom: height * .13,
          left: height * .02,
          child: disappearingWidget(
              shrinkOffset,
              Text('Your stay at',
                  style: TextStyle(color: Colors.white, fontSize: 25))),
        ),
        Positioned(
          bottom: height * .05,
          left: height * .02,
          child: disappearingWidget(
              shrinkOffset,
              Text('Beautiful & Trendy 2  Floor Penthouse | Old MTL',
                  style: TextStyle(color: Colors.white, fontSize: 25))),
        ),
        Positioned(
          bottom: height * .03,
          left: height * .02,
          child: disappearingWidget(
              shrinkOffset,
              Row(
                children: [
                  Text('4 Bedrooms',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  SizedBox(width: 10),
                  getRoundedCircularContainer(),
                  SizedBox(width: 10),
                  Text('4.5 Bathrooms',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  SizedBox(width: 10),
                  getRoundedCircularContainer(),
                  SizedBox(width: 10),
                  Text('10 Guests',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ],
              )),
        ),
        Positioned(
          child: Container(
            height: height * .03,
            child: disappearingWidget(
              shrinkOffset,
              Center(
                child: getSmallContainer(context),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(50),
              ),
            ),
          ),
          bottom: -2,
          left: 0,
          right: 0,
        ),
      ],
    );
  }

  Widget disappearingWidget(double shrinkOffset, Widget childWidget) {
    return Opacity(
      opacity: disappear(shrinkOffset),
      child: childWidget,
    );
  }

  double appear(double shrinkOffset) => shrinkOffset / expandedHeight;

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;

  Widget buildAppBar(double shrinkOffset) => Opacity(
        opacity: appear(shrinkOffset),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Beautiful & Trendy 2 Floor Penthouse | Old MTL',
            style: TextStyle(
                color: Colors.black,
                overflow: TextOverflow.ellipsis,
                fontSize: 15.5),
            maxLines: 1,
          ),
          leading: Icon(
            Icons.chevron_left,
            size: 40,
            color: Colors.black,
          ),
        ),
      );

  Widget buildBackground(double shrinkOffset) => Opacity(
        opacity: disappear(shrinkOffset),
        child: Image.asset(
          'assets/images/Landing image.png',
          fit: BoxFit.cover,
        ),
      );

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + height * .07;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

Widget getRoundedCircularContainer() {
  return Container(
    height: 7,
    width: 7,
    decoration: BoxDecoration(
        color: Color(0xffffffff),
        border: Border.all(),
        borderRadius: BorderRadius.circular(
            20) // use instead of BorderRadius.all(Radius.circular(20))
        ),
  );
}
