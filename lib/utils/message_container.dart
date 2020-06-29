import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class MessageContainer extends StatefulWidget {
  final String inputMessage;
  final String type;
  final Color color;
  MessageContainer(
      {@required this.inputMessage, @required this.type, @required this.color});

  @override
  _MessageContainerState createState() => _MessageContainerState();
}

class _MessageContainerState extends State<MessageContainer> {
  FlutterTts flutterTts = FlutterTts();
  BoxDecoration boxDecoration() {
    if (widget.type == 'user') {
      return BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        color: widget.color,
      );
    }
    return BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8),
        bottomLeft: Radius.circular(8),
      ),
      color: widget.color,
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      flutterTts.setLanguage("en-US");
      flutterTts.speak(widget.inputMessage);
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
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
