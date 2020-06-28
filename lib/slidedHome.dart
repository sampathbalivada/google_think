import 'package:flutter/material.dart';

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
                height: 20,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Google Think",
                    style: TextStyle(color: Color(0xffF8F8F8), fontSize: 26),
                  ),
                ),
                color: Color(0xff4285F4).withOpacity(0.8),
                height: 130,
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
              Container(
                child: Center(
                  child: Text(
                    "Google Search",
                    style: TextStyle(color: Color(0xffF8F8F8), fontSize: 26),
                  ),
                ),
                color: Color(0xffDB4437).withOpacity(0.8),
                height: 130,
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
              Container(
                child: Center(
                  child: Text(
                    "Ambient Computing",
                    style: TextStyle(color: Color(0xffF8F8F8), fontSize: 26),
                  ),
                ),
                color: Color(0xffF4B400).withOpacity(0.8),
                height: 130,
              ),
              SizedBox(
                height: 7,
              ),
              Center(
                child: Text(
                  'Simulation 3',
                  style: TextStyle(color: Color(0xfff8f8f8), fontSize: 13),
                ),
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
