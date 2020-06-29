import 'package:flutter/material.dart';
import 'package:google_think/utils/appbar.dart';
import 'package:google_think/utils/message_container.dart';

import '../../values/strings.dart';

class ScenarioOne extends StatefulWidget {
  @override
  _ScenarioOneState createState() => _ScenarioOneState();
}

class _ScenarioOneState extends State<ScenarioOne> {
  bool _isThinking = false;
  int presentChat = 1;
  double opacity = 0;

  void increment() {
    setState(() {
      if (presentChat < chat.length) {
        presentChat++;
      }
      print(presentChat);
    });
  }

  void decrement() {
    setState(() {
      if (presentChat > 0) {
        presentChat--;
      }
      print(presentChat);
    });
  }

  void thinkChanger() {
    setState(() {
      _isThinking = !_isThinking;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          ScenarioAppBar(isThinking: _isThinking),
          SizedBox(
            height: 10,
          ),
          Container(
            height: _height * 0.9,
            child: Hero(
              tag: 'scenario1',
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: presentChat,
                itemBuilder: (content, index) {
                  return Opacity(
                    opacity:
                        (index < presentChat - 1 || chat[index][1] == 'assist')
                            ? 1.0
                            : opacity,
                    child: Padding(
                      padding: EdgeInsets.only(top: 4, bottom: 4),
                      child: Align(
                        alignment: (chat[index][1] == 'assist')
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        child: MessageContainer(
                          thinkingChanger: thinkChanger,
                          increment: increment,
                          decrement: decrement,
                          inputMessage: chat[index][0],
                          type: chat[index][1],
                          color: Color(
                            int.parse(chat[index][2]),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
