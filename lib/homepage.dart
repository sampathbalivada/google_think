import 'package:flutter/material.dart';
// TODO: Comment while commiting
// import './test_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        // TODO: Comment while commiting
        onPressed: () {
          //   Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) => TestPage(),
          //   ));
        },
      ),
    );
  }
}
