import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:google_think/utils/profile.dart';

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
        child: Hero(
          tag: 'logo',
          child: Image.asset(
            "assets/images/logo.png",
          ),
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(
          top: _height * 0.018,
        ),
        child: Hero(
          tag: 'title',
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Google ",
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                "Think",
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
        ),
      ),
      centerTitle: true,
    );
  }
}

class HomeAppBar extends StatelessWidget {
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
          child: Hero(
            tag: 'profile_picture',
            child: ProfileAvatar(radius: 24),
          ),
        )
      ],
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: EdgeInsets.only(
          top: _height * 0.018,
          left: _width * 0.014,
        ),
        child: Hero(
          tag: 'logo',
          child: Image.asset(
            "assets/images/logo.png",
          ),
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(
          top: _height * 0.018,
        ),
        child: Hero(
          tag: 'title',
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Google ",
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                "Think",
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
        ),
      ),
      centerTitle: true,
    );
  }
}

class ScenarioAppBar extends StatelessWidget {
  final bool isThinking;
  ScenarioAppBar({@required this.isThinking});
  Widget setTitle(_height, _width, heading1, heading2) {
    return Padding(
      padding: EdgeInsets.only(
        top: _height * 0.018,
      ),
      child: isThinking
          ? Hero(
              tag: 'thinker',
              child: Container(
                width: _width * 0.12,
                height: _width * 0.12,
                child: FlareActor(
                  "assets/animations/think.flr",
                  alignment: Alignment.center,
                  animation: "Aura",
                ),
              ),
            )
          : Hero(
              tag: 'thinker',
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Google ",
                    style: heading1,
                  ),
                  Text(
                    "Think",
                    style: heading2,
                  ),
                ],
              ),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return AppBar(
      elevation: 0,
      actions: [
        Padding(
          padding: EdgeInsets.only(
            top: _height * 0.018,
            right: _width * 0.014,
          ),
          child: Image.asset("assets/images/fuchsia_logo.png"),
        )
      ],
      backgroundColor: Colors.black,
      leading: Padding(
        padding: EdgeInsets.only(
          top: _height * 0.018,
          left: _width * 0.014,
        ),
        child: Hero(
          tag: 'logo',
          child: Image.asset(
            "assets/images/logo.png",
          ),
        ),
      ),
      title: setTitle(_height, _width, Theme.of(context).textTheme.headline1,
          Theme.of(context).textTheme.headline2),
      centerTitle: true,
    );
  }
}
