import 'package:flutter/material.dart';
import 'package:swipe_up/swipe_up.dart';
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
              "assets/images/background.png",
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
                  child: Image.asset("assets/images/fuchsia_logo.png"),
                )
              ],
              backgroundColor: Colors.transparent,
              leading: Padding(
                padding: EdgeInsets.only(
                  top: _height * 0.018,
                  left: _width * 0.014,
                ),
                child: Image.asset(
                  "assets/images/logo.png",
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
                Padding(
                  padding: EdgeInsets.only(left: _width * 0.028),
                  child: CircleAvatar(
                    radius: 58,
                    backgroundColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: _height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      child: Text(
                        "27th June 2035",
                        style: TextStyle(color: Colors.white),
                      ),
                      width: _width * 0.29,
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
                          Image.asset('assets/images/battery.png'),
                          SizedBox(
                            width: 2,
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
                SizedBox(
                  height: _height * 0.67,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/fuchsia_logo.png",
                      fit: BoxFit.fill,
                      height: 26,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/images/footer.png",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      showArrow: true,
      child: Padding(
        padding: EdgeInsets.only(bottom: _height * 0.017),
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
            "assets/images/background.png",
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
                child: Image.asset("assets/images/fuchsia_logo.png"),
              )
            ],
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: EdgeInsets.only(
                top: _height * 0.018,
                left: _width * 0.014,
              ),
              child: Image.asset(
                "assets/images/logo.png",
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
              Padding(
                padding: EdgeInsets.only(left: _width * 0.028),
                child: CircleAvatar(
                  radius: 58,
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(
                height: _height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    child: Text(
                      "27th June 2035",
                      style: TextStyle(color: Colors.white),
                    ),
                    width: _width * 0.29,
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
                        Image.asset('assets/images/battery.png'),
                        SizedBox(
                          width: 2,
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
                      "assets/images/fuchsia_logo.png",
                      fit: BoxFit.fill,
                      height: 26,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/images/footer.png",
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
