import 'package:flutter/material.dart';
import 'package:google_think/utils/appbar.dart';
import 'package:google_think/utils/message_container.dart';
import '../../values/strings.dart';

class ScenarioTwo extends StatefulWidget {
  @override
  _ScenarioTwoState createState() => _ScenarioTwoState();
}

class _ScenarioTwoState extends State<ScenarioTwo> {
  bool _isThinking = false;
  int presentChat = 1;
  double opacity = 0;

  void increment() {
    setState(() {
      if (presentChat < chat2.length) {
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
              tag: 'scenario2',
              child: ListView.builder(
                // controller: _controller,
                shrinkWrap: true,
                itemCount: presentChat,
                itemBuilder: (content, index) {
                  // _controller.jumpTo(_controller.position.maxScrollExtent);

                  return Opacity(
                    opacity:
                        (index < presentChat - 1 || chat2[index][1] == 'assist')
                            ? 1.0
                            : opacity,
                    child: Padding(
                      padding: EdgeInsets.only(top: 4, bottom: 4),
                      child: Align(
                        alignment: (chat2[index][1] == 'assist')
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        child: MessageContainer(
                          thinkingChanger: thinkChanger,
                          increment: increment,
                          decrement: decrement,
                          inputMessage: chat2[index][0],
                          type: chat2[index][1],
                          color: Color(
                            int.parse(chat2[index][2]),
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
