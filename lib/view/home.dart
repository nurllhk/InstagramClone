import 'package:flutter/material.dart';
import 'package:instagram/class/images.dart';
import 'package:instagram/class/palet.dart';

import '../widget/appbar.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const AppBarItem(),
              SingleChildScrollView(
                child:
                Column(

                  children: [
                    Container(
                      padding: Palet.pageHorizontel+Palet.itemHeigt,
                      height: MediaQuery
                          .of(context)
                          .size
                          .width,
                      width: MediaQuery
                          .of(context)
                          .size
                          .height,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:AssetImage(DefaultImage.image1),
                                  ),
                                  const SizedBox(width: 10,),
                                  Text("nurllhk",style: Theme.of(context).textTheme.titleMedium,)
                                ],
                              ),
                              const Icon(Icons.more_vert)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )

            ],
          ),
        ));
  }
}

