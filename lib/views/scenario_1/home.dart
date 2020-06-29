import 'package:flutter/material.dart';
import 'package:google_think/utils/appbar.dart';
import 'package:google_think/utils/message_container.dart';

class ScenarioOne extends StatefulWidget {
  @override
  _ScenarioOneState createState() => _ScenarioOneState();
}

class _ScenarioOneState extends State<ScenarioOne> {
  bool _isThinking = false;
  
  @override
  Widget build(BuildContext context) {
    List<String> chat = [
      "Hi! as you are using google think for the first time, let me give some introduction."
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {
      //     setState(() {
      //       _isThinking = !_isThinking;
      //     });
      //   },
      // ),
      body: Column(
        children: [
          ScenarioAppBar(isThinking: _isThinking),
          SizedBox(
            height: 10,
          ),
          for (var msg in chat)
            Align(
              alignment: Alignment.centerRight,
              child: MessageContainer(
                  inputMessage: msg, type: 'assist', color: Colors.white),
            ),
        ],
      ),
    );
  }
}
