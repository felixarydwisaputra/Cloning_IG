import 'package:flutter/material.dart';

class infoItem extends StatelessWidget {
  final String info;
  final String jumlah;

  const infoItem({required this.info, required this.jumlah});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            jumlah,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            info,
          ),
        ],
      ),
    );
  }
}
