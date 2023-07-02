import 'package:flutter/material.dart';
import 'package:instagram/class/images.dart';
import 'package:instagram/class/palet.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarItem extends StatelessWidget {
  const AppBarItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Palet.pageHorizontel+Palet.pageVertical,
      height: MediaQuery.of(context).size.height / 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(DefaultImage.logoImage),
          Row(
            children: [
              IconButton(
                  onPressed: null,
                  icon: Icon(FontAwesomeIcons.heart, color: Palet.white)),
              IconButton(
                  onPressed: null,
                  icon:
                  Icon(FontAwesomeIcons.message, color: Palet.white)),
            ],
          )
        ],
      ),
    );
  }
}