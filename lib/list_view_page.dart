import 'package:flutter/material.dart';
import 'package:instagram_demo/utills/all_colors.dart';
import 'package:instagram_demo/utills/all_string.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}
List<String> stdName = [
  "Imran Laskar, Imran Laskar, imran kjdsoahj dsijfj iosdf ",
  "Khalid"
  "Masum",
  "Jasim",
  "Bisnu"
];
class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AllStrings.listViewName),
      ),
      body: 
        Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                  itemBuilder: (context, index){
                    return Text("Imran");
                    }
              ),
            )
          ],
        )

    );
  }
}