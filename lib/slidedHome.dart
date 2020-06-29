import 'package:flutter/material.dart';
import 'package:google_think/views/scenario_1/home.dart';
import 'package:google_think/views/scenario_2/home.dart';

import 'utils/appbar.dart';
import 'utils/stats_widget.dart';

class HomeOnSwipe extends StatefulWidget {
  @override
  _HomeOnSwipeState createState() => _HomeOnSwipeState();
}

class _HomeOnSwipeState extends State<HomeOnSwipe> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          child: Image.asset(
            "assets/images/background.png",
            fit: BoxFit.fill,
            width: _width,
            height: _height,
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.4),
          width: _width,
          height: _height,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [
              HomeAppBar(),
              SizedBox(
                height: _height * 0.04,
              ),
              SizedBox(
                height: _height * 0.04,
              ),
              Hero(
                tag: 'stats',
                child: StatsRow(),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ScenarioOne()));
                },
                child: Hero(
                  tag: 'scenario1',
                  child: Container(
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Google ",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                .copyWith(fontSize: 26),
                          ),
                          Text(
                            "Think",
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                .copyWith(fontSize: 26),
                          ),
                        ],
                      ),
                    ),
                    color: Color(0xff4285F4).withOpacity(0.8),
                    height: 130,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Center(
                child: Text(
                  'Simulation 1',
                  style: TextStyle(color: Color(0xfff8f8f8), fontSize: 13),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ScenarioTwo()));
                },
                child: Hero(
                  tag: 'scenario2',
                  child: Container(
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Google ",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                .copyWith(fontSize: 26),
                          ),
                          Text(
                            "Search",
                            style: Theme.of(context)
                                .textTheme
                                .headline2
                                .copyWith(fontSize: 26),
                          ),
                        ],
                      ),
                    ),
                    color: Color(0xffF4B400).withOpacity(0.8),
                    height: 130,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Center(
                child: Text(
                  'Simulation 2',
                  style: TextStyle(color: Color(0xfff8f8f8), fontSize: 13),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/fuchsia_logo.png",
                      fit: BoxFit.fill,
                      height: _height * 0.06,
                    ),
                    SizedBox(
                      width: _width * 0.03,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Image.asset(
                        "assets/images/footer.png",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
