
# Instagram Clone

<br>

<div style="display: flex;">
    <img src="https://github.com/nurllhk/InstagramClone/assets/79688257/1547c5e5-2c1e-49dc-a35d-32c2b0315b8f" alt="Simulator Screen Shot - iPhone 14 Pro - 2023-06-30 at 20 05 48" style="width: 40%; object-fit: contain;">

  <img src="https://github.com/nurllhk/InstagramClone/assets/79688257/dc81e621-5e77-4496-ad0e-6b3e7eb0019a" alt="Simulator Screen Shot - iPhone 14 Pro - 2023-06-30 at 20 05 41" style="width: 40%; object-fit: contain;">
</div>



<br>



https://github.com/nurllhk/InstagramClone/assets/79688257/5bd25937-7489-4c96-a63b-93c28255f2ad

# packages used

```sh

  font_awesome_flutter: ^10.5.0
  flutter_svg: ^2.0.7

 ```
<br>

# Album card

```sh 
Column(
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
      ),
 
 ```

