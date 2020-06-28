import 'package:flutter/material.dart';
import 'package:google_think/utils/appbar.dart';
import 'package:google_think/utils/stats_widget.dart';
import 'package:swipedetector/swipedetector.dart';
import 'slidedHome.dart';
import 'utils/profile.dart';
// import './test_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return SwipeDetector(
      onSwipeUp: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => HomeOnSwipe(),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.fill,
              width: _width,
              height: _height,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                ListView(
                  shrinkWrap: true,
                  children: [
                    MyAppBar(),
                    SizedBox(
                      height: _height * 0.04,
                    ),
                    Hero(
                      tag: 'profile_picture',
                      child: ProfileAvatar(radius: 58),
                    ),
                    SizedBox(
                      height: _height * 0.04,
                    ),
                    Hero(
                      tag: 'stats',
                      child: StatsRow(),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.white,
                ),
                Text(
                  'Swipe Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: _width * 0.05),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
