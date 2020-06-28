import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return AppBar(
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
    );
  }
}
