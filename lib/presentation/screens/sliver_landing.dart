// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stella_assignment/data/constants.dart';
import 'package:stella_assignment/presentation/widgets/rounded_container_widget.dart';

class AdvancedSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = getSize(context).height * .7;
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: CustomSliverAppBarDelegate(height),
            pinned: true,
          ),
          buildImages(),
        ],
      ),
    );
  }

  Widget buildImages() => SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) => ImageWidget(index),
          childCount: 20,
        ),
      );
}

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  const CustomSliverAppBarDelegate(
    this.expandedHeight,
  );

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final height = getSize(context).height;
    final size = 60;
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
          bottom: height * .08,
          left: height * .02,
          child: disappearingWidget(
              shrinkOffset,
              Text('Beautiful & Trendy 2  Floor Penthouse | Old MTL',
                  style: TextStyle(color: Colors.white, fontSize: 25))),
        ),
        Positioned(
          bottom: height * .05,
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
        // Positioned(
        //   top: top,
        //   left: 20,
        //   right: 20,
        //   child: buildFloating(shrinkOffset),
        // ),
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

  Widget buildFloating(double shrinkOffset) => Opacity(
        opacity: disappear(shrinkOffset),
        child: Card(
          child: Row(
            children: [
              Expanded(child: buildButton(text: 'Share', icon: Icons.share)),
              Expanded(child: buildButton(text: 'Like', icon: Icons.thumb_up)),
            ],
          ),
        ),
      );

  Widget buildButton({
    @required text,
    @required icon,
  }) =>
      TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(width: 12),
            Text(text, style: TextStyle(fontSize: 20)),
          ],
        ),
        onPressed: () {},
      );

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 40;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

class ImageWidget extends StatelessWidget {
  final int index;

  const ImageWidget(
    this.index,
  );

  @override
  Widget build(BuildContext context) => Container(
        height: 150,
        width: double.infinity,
        child: Card(
          child: Image.network(
            'https://source.unsplash.com/random?sig=$index',
            fit: BoxFit.cover,
          ),
        ),
      );
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
