import 'package:flutter/material.dart';
import 'package:instagram/class/defaultkey.dart';
import 'package:instagram/class/images.dart';
import 'package:instagram/class/palet.dart';

import '../widget/appbar.dart';
import '../widget/history.dart';
import '../widget/post.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const AppBarItem(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: Palet.storyHorizontel,
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 5,
                                  height:
                                      MediaQuery.of(context).size.height / 11,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff7c94b6),
                                    image: DecorationImage(
                                      image: AssetImage(DefaultImage.image1),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50.0)),
                                    border: Border.all(
                                      width: 4.0,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                  left: 53, bottom: 10, child: Icon(Icons.add)),
                            ],
                          ),
                          History(
                            image: DefaultImage.image2,
                          ),
                          History(
                            image: DefaultImage.image3,
                          ),
                          History(
                            image: DefaultImage.image4,
                          ),
                          History(
                            image: DefaultImage.image5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: Palet.itemHeigt,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          PostProfile(
                            image: DefaultImage.image1,
                            title: DefaultKey.title1,
                            defaultimage: DefaultImage.image5,
                          ),
                          PostProfile(
                            image: DefaultImage.image2,
                            title: DefaultKey.title2,
                            defaultimage: DefaultImage.image1,
                          ),
                          PostProfile(
                            image: DefaultImage.image3,
                            title: DefaultKey.title3,
                            defaultimage: DefaultImage.image2,
                          ),
                          PostProfile(
                            image: DefaultImage.image4,
                            title: DefaultKey.title4,
                            defaultimage: DefaultImage.image3,
                          ),
                          PostProfile(
                            image: DefaultImage.image5,
                            title: DefaultKey.title5,
                            defaultimage: DefaultImage.image4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
