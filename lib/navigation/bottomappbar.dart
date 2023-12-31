import 'package:flutter/material.dart';
import 'package:instagram/class/images.dart';
import 'package:instagram/class/tabbar.dart';

// ignore: must_be_immutable
class TabbarItem extends StatefulWidget {
  const TabbarItem({super.key});

  @override
  State<TabbarItem> createState() => _TabbarItemState();
}

class _TabbarItemState extends State<TabbarItem> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabbarPage.page[selected],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              selected = index;
            });
          },
          currentIndex: selected,
          items:  [
            const BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
            const BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            const BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined), label: ''),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: MediaQuery.of(context).size.height/50,
                  backgroundImage: AssetImage(DefaultImage.profilImage),
                ),
                label: ''),
          ]),
    );
  }
}
