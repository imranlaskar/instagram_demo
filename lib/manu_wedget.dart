import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final Function(String) onItemClick;

  const MenuWidget({Key? key, required this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _heightOnly=MediaQuery.of(context).size.height;
    double _widthOnly=MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: _heightOnly*0.045,
          ),
          CircleAvatar(
            radius: 65,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/Imran.jpg'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Imran Laskar',
            style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.bold,
              fontSize: _widthOnly*0.06,
              ),
          ),
          SizedBox(
            height: 20,
          ),
          sliderItem('Second Page', Icons.moving),
          sliderItem('Third Page', Icons.moving),
          sliderItem('List View Page', Icons.people),
          sliderItem('Setting', Icons.settings),
          sliderItem('LogOut', Icons.arrow_back_ios)
        ],
      ),
    );
  }

  Widget sliderItem(String title, IconData icons) => ListTile(
      title: Text(
        title,
        style:
        TextStyle(color: Colors.black, fontFamily: 'BalsamiqSans_Regular'),
      ),
      leading: Icon(
        icons,
        color: Colors.black,
      ),
      onTap: () {
        onItemClick(title);
      });
}