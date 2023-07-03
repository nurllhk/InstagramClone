
# Instagram Clone

<br>

<table>
  <tr>
    <td>
      <img src="https://github.com/nurllhk/InstagramClone/assets/79688257/fdec1f67-523a-4ac6-a9fa-2e29c325f465" alt="Resim 1" style="max-width: 100%;" />
    </td>
    <td>
      <img src="https://github.com/nurllhk/InstagramClone/assets/79688257/ee1521f5-260f-4e6a-8dc2-22176ebbab24" alt="Resim 2" style="max-width: 100%;" />
    </td>
  </tr>
</table>



<br>



https://github.com/nurllhk/InstagramClone/assets/79688257/4e240600-d8d6-48fa-b64c-4ba963d1a2c6




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

