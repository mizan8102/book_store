import 'package:flutter/material.dart';

class Personal_info extends StatefulWidget {
  const Personal_info({Key key}) : super(key: key);

  @override
  _Personal_infoState createState() => _Personal_infoState();
}

class _Personal_infoState extends State<Personal_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child:Text("Personal Information"),
      ),
    );
  }
}
