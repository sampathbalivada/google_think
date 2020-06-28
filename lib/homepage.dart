import 'package:flutter/material.dart';
import 'package:swipe_up/swipe_up.dart';
// TODO: Comment while commiting
// import './test_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return SwipeUp(
      color: Colors.white,
      sensitivity: 0.5,
      onSwipe: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => HomeOnSwipe()));
      },
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              "images/background.png",
              fit: BoxFit.fill,
              width: _width,
              height: _height,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              actions: [
                Padding(
                  padding: EdgeInsets.only(
                    top: _height * 0.018,
                    right: _width * 0.014,
                  ),
                  child: Image.asset("images/fuchsia_logo.png"),
                )
              ],
              backgroundColor: Colors.transparent,
              leading: Padding(
                padding: EdgeInsets.only(
                  top: _height * 0.018,
                  left: _width * 0.014,
                ),
                child: Image.asset(
                  "images/logo.png",
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(
                  top: _height * 0.018,
                ),
                child: Text(
                  "Google Think",
                ),
              ),
              centerTitle: true,
            ),
            body: ListView(
              children: [
                SizedBox(
                  height: _height * 0.04,
                ),
                CircleAvatar(
                  radius: 58,
                  backgroundColor: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: _height * 0.04,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        child: Text(
                          "27th June 2035",
                          style: TextStyle(color: Colors.white),
                        ),
                        width: _width * 0.26,
                      ),
                      SizedBox(
                        child: Text(
                          "10:00 AM",
                          style: TextStyle(color: Colors.white),
                        ),
                        width: _width * 0.27,
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(
                              Icons.battery_full,
                              color: Colors.white,
                            ),
                            Text(
                              "99%",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: _height * 0.6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "images/fuchsia_logo.png",
                        fit: BoxFit.fill,
                        height: 26,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "images/footer.png",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      showArrow: true,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Material(
          color: Colors.transparent,
          child: Text(
            "Swipe Up",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

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
            "images/background.png",
            fit: BoxFit.fill,
            width: _width,
            height: _height,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            actions: [
              Padding(
                padding: EdgeInsets.only(
                  top: _height * 0.018,
                  right: _width * 0.014,
                ),
                child: Image.asset("images/fuchsia_logo.png"),
              )
            ],
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: EdgeInsets.only(
                top: _height * 0.018,
                left: _width * 0.014,
              ),
              child: Image.asset(
                "images/logo.png",
              ),
            ),
            title: Padding(
              padding: EdgeInsets.only(
                top: _height * 0.018,
              ),
              child: Text(
                "Google Think",
              ),
            ),
            centerTitle: true,
          ),
          body: ListView(
            children: [
              SizedBox(
                height: _height * 0.04,
              ),
              CircleAvatar(
                radius: 58,
                backgroundColor: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: _height * 0.04,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      child: Text(
                        "27th June 2035",
                        style: TextStyle(color: Colors.white),
                      ),
                      width: _width * 0.26,
                    ),
                    SizedBox(
                      child: Text(
                        "10:00 AM",
                        style: TextStyle(color: Colors.white),
                      ),
                      width: _width * 0.27,
                    ),
                    SizedBox(
                      // width: _width * 0.27,
                      child: Row(
                        children: [
                          Icon(
                            Icons.battery_full,
                            color: Colors.white,
                          ),
                          Text(
                            "99%",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  color: Colors.grey,
                  height: 130,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  color: Colors.grey,
                  height: 130,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  color: Colors.grey,
                  height: 130,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/fuchsia_logo.png",
                      fit: BoxFit.fill,
                      height: 26,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "images/footer.png",
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
