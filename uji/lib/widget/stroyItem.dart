import 'package:flutter/material.dart';

class storyItem extends StatelessWidget {
  final String judul;
  final int angka;

  storyItem({required this.judul, required this.angka});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[300],
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://picsum.photos/id/${177 + angka}/200/300"),
                ),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 3),
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(judul),
      ],
    );
  }
}
