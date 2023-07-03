import 'package:flutter/material.dart';
import 'package:instagram/class/images.dart';
import 'package:instagram/class/palet.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/appbar.dart';
import '../widget/history.dart';

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
                  SingleChildScrollView(
                    padding: Palet.pageVertical,
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
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
                                    left: 65, bottom: 10, child: Icon(Icons.add)),
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
                  ),
                  Container(
                    padding: Palet.itemHeigt,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage(DefaultImage.image1),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "nurllhk",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                )
                              ],
                            ),
                            const Icon(Icons.more_vert)
                          ],
                        ),
                        Padding(
                          padding: Palet.pageVertical,
                          child: Image(
                            image: AssetImage(DefaultImage.image2),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 2.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: Palet.iconPadding,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(FontAwesomeIcons.heart),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(FontAwesomeIcons.comment),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(Icons.send_outlined)
                                ],
                              ),
                              Icon(
                                Icons.bookmark_outline_sharp,
                              )
                            ],
                          ),
                        )
                      ],
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
