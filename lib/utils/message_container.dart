import 'package:flutter/material.dart';

class MessageContainer extends StatelessWidget {
  final String inputMessage;
  final String type;

  MessageContainer({@required this.inputMessage, @required this.type});

  BoxDecoration boxDecoration() {
    print(this.type);
    if (this.type == 'user') {
      return BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        color: Colors.white,
      );
    }

    return BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8),
        bottomLeft: Radius.circular(8),
      ),
      color: Color(0xFFFCEBBD),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(10),
      width: _width * 0.6,
      decoration: boxDecoration(),
      child: Text(
        inputMessage,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
