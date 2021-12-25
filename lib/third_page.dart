import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}
double conHight = 50;
double conWidth = 50;
class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: InkWell(
        onDoubleTap: (){
          setState(() {
            conHight = 40;
            conHight = 40;
          });
        },
        onTap: (){
          setState(() {
            conHight = 150;
            conWidth = MediaQuery.of(context).size.width;
          });
        },
        child: AnimatedContainer(
          height: conHight,
          width: conWidth,
          color: Colors.teal,
          duration: Duration(milliseconds: 1000),
        ),
      ),
    );
  }
}
