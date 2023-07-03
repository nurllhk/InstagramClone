import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../class/defaultkey.dart';
import '../class/palet.dart';

class PostProfile extends StatelessWidget {
  const PostProfile({
    super.key, required this.image, required this.title, required this.defaultimage,
  });
  final String image;
  final String title;
  final String defaultimage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                  AssetImage(image),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  title,
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
            image: AssetImage(defaultimage),
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
        ),
        const ListTile(
          title: Text(DefaultKey.postLike),
          subtitle: Text(DefaultKey.commentCount),
        )
      ],
    );
  }
}