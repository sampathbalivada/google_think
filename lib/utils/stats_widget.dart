import 'package:flutter/material.dart';

class StatsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: _width * 0.33,
          child: Text(
            "27th June 2035",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Container(
          width: _width * 0.33,
          child: Text(
            "10:00 AM",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/battery.png'),
            SizedBox(
              width: 2,
            ),
            Text(
              " 99%",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              width: 2,
            ),
          ],
        ),
      ],
    );
  }
}
