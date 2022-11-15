import 'package:flutter/material.dart';
import '../widget/infoItem.dart';
import '../widget/storyItem.dart';
import '../widget/tabBar.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text(
              "felixary_",
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Icon(
                  Icons.add_box_outlined,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ],
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 120,
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.red, Colors.amber],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        Container(
                          height: 72,
                          width: 72,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 4),
                            color: Colors.grey[300],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://picsum.photos/id/177/200/300"),
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ],
                    ),
                  ),
                  infoItem(info: "Post", jumlah: "23"),
                  infoItem(info: "Followers", jumlah: "23K"),
                  infoItem(info: "Following", jumlah: "23"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "felixarydwisaputra",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias obcaecati sed provident nihil. ",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: "#nahkan",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 3),
                  child: Text(
                    "Link goes here",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  storyItem(judul: "Story 1", angka: 33),
                  SizedBox(
                    width: 20,
                  ),
                  storyItem(judul: "Story 2", angka: 53),
                  SizedBox(
                    width: 20,
                  ),
                  storyItem(judul: "Story 3", angka: 73),
                  SizedBox(
                    width: 20,
                  ),
                  storyItem(judul: "Story 4", angka: 77),
                  SizedBox(
                    width: 20,
                  ),
                  storyItem(judul: "Story 5", angka: 79),
                  SizedBox(
                    width: 20,
                  ),
                  storyItem(judul: "Story 6", angka: 50),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
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
                          Icon(
                            Icons.add,
                            size: 30,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Tambah")
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              children: [
                tabItem(
                  active: true,
                  icon: Icons.grid_on,
                ),
                tabItem(
                  active: false,
                  icon: Icons.person_pin_outlined,
                ),
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
            ),
            itemCount: 23,
            itemBuilder: (context, index) {
              return Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://picsum.photos/id/${123 + index}/200/300"),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(
          color: Colors.grey[500],
        ),
        currentIndex: 4,
        selectedIconTheme: IconThemeData(color: Colors.black),
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.queue_play_next_rounded), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "home"),
        ],
      ),
    );
  }
}
