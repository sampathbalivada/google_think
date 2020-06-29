import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class MessageContainer extends StatefulWidget {
  final String inputMessage;
  final String type;
  final Color color;
  final Function increment;
  final Function decrement;
  final Function thinkingChanger;
  MessageContainer({
    @required this.inputMessage,
    @required this.type,
    @required this.color,
    @required this.increment,
    @required this.thinkingChanger,
    @required this.decrement,
  });

  @override
  _MessageContainerState createState() => _MessageContainerState();
}

class _MessageContainerState extends State<MessageContainer> {
  FlutterTts flutterTts = FlutterTts();
  BoxDecoration boxDecoration() {
    if (widget.type == 'user') {
      return BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
        color: widget.color,
      );
    }
    return BoxDecoration(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(8),
        bottomRight: Radius.circular(8),
      ),
      color: widget.color,
    );
  }

  @override
  void initState() {
    super.initState();
    if (widget.type == 'assist') {
      speak();
    } else {
      think();
    }
  }

  void speak() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await flutterTts.setLanguage("en-US");
      await flutterTts.speak(widget.inputMessage);
      flutterTts.setCompletionHandler(() {
        widget.increment();
      });
    });
  }

  void think() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      print('Hey');
      widget.thinkingChanger();
      await Future.delayed(Duration(seconds: 4), () {
        widget.thinkingChanger();
      });
      widget.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(10),
      width: _width * 0.6,
      decoration: boxDecoration(),
      child: Text(
        widget.inputMessage,
        style:
            Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.black),
      ),
    );
  }
}
