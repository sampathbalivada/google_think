import 'package:flutter/material.dart';
import 'package:google_think/utils/appbar.dart';

class ScenarioOne extends StatefulWidget {
  @override
  _ScenarioOneState createState() => _ScenarioOneState();
}

class _ScenarioOneState extends State<ScenarioOne> {
  bool _isThinking = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _isThinking = !_isThinking;
          });
        },
      ),
      body: Column(
        children: [
          ScenarioAppBar(isThinking: _isThinking),
        ],
      ),
    );
  }
}
