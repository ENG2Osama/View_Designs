import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget{
  @override
  State<Setting> createState() {
  return StateSetting();
  }

}
class StateSetting extends State<Setting>{
  @override
  Widget build(BuildContext context) {
  return
      Scaffold(appBar: AppBar(title: Text('Setting',style: TextStyle(color: Colors.black
      ,fontSize: 25,fontWeight: FontWeight.w500),),centerTitle: true,backgroundColor: Colors.blue[200],),);
  }

}