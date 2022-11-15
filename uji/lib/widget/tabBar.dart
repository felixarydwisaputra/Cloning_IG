import 'package:flutter/material.dart';

class tabItem extends StatelessWidget {
  final IconData icon;
  final bool active;

  tabItem({this.active = false, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                color: active == true ? Colors.black : Colors.white, width: 2),
          ),
        ),
        child: Icon(icon),
      ),
    );
  }
}
