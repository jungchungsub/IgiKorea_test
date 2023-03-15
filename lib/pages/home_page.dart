import 'package:flutter/material.dart';
import 'package:flutter_igikorea/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gBackgroundColor,
      body: ListView(
        children: [
          Container(
            child: Row(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
