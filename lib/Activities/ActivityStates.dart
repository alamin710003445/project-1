import 'package:flutter/material.dart';

class RedActivityState extends StatefulWidget{
  String inpText;

  RedActivityState({required this.inpText});
  
  
  RedActivity createState() => RedActivity();
}


class RedActivity extends State<RedActivityState>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Red"),
      ),
      body: Center(
        child: Text(widget.inpText),
      ),
    );
  }

}