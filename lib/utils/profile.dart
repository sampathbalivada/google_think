import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final double radius;

  ProfileAvatar({@required this.radius});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CircleAvatar(
        radius: radius,
        backgroundImage: ExactAssetImage('assets/images/profile.jpg'),
      ),
    );
  }
}
