import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 70,),
          SizedBox(height: 7,),
          Center(
            child: Text("Welcome", style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold, fontFamily: "Ubuntu"),),
          ),
        ],
      ),
    );
  }
}