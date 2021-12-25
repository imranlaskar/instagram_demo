import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_demo/utills/all_colors.dart';
import 'package:instagram_demo/utills/all_string.dart';

double conHeight = 50;
double conWidth = 50;
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllCollors.appBarColor,
        title: Text(AllStrings.secondPage),
      ),
      body: Column(
        children: [
           InkWell(
             onDoubleTap: (){
               setState(() {
                 conHeight=50;
                 conWidth=50;
               });
             },
             onTap: (){
               setState(() {
                 conHeight=250;
                 conWidth=500;
               });
             },
             child: AnimatedContainer(
               height: conHeight,
               width: conWidth,
               color: Colors.deepOrange,
               duration: Duration(milliseconds: 2000),
             ),
           ),
        ],
      ),
    );
  }
}
