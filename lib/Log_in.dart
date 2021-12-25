import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_demo/my_home_page.dart';
import 'package:instagram_demo/sing_up.dart';
import 'package:instagram_demo/utills/all_colors.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

final _formKey= GlobalKey<FormState>();

String _email = "ilbd@gmail.com";
String _userName = "imran";
String _password = "123456";

TextEditingController emailCont = TextEditingController();
TextEditingController passCont = TextEditingController();

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      body:
      Container(
        color: Colors.teal.shade100,
        height: height,
        width: width,

      ),
    );
  }
}
