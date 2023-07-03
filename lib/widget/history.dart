import 'package:flutter/material.dart';

import '../class/palet.dart';

// ignore: must_be_immutable
class History extends StatelessWidget {
  History({
    required this.image,
    super.key,
  });

  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Palet.storyHorizontel,
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        height: MediaQuery.of(context).size.height / 11,
        decoration: BoxDecoration(
          gradient: const RadialGradient(
            center:  Alignment(0.35, 0.9),
            focal:  Alignment(0.0, 1.4),
            focalRadius: 2,
            colors: Palet.storygradiant,
          ),
          borderRadius: Palet.storyBorder,
          border: Border.all(
            style: BorderStyle.none,
            width: 2.0,
          ),
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
      ),
    );
  }
}
