import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Facelogin extends StatelessWidget {
  const Facelogin({super.key});
final List<Map<String,String>> feedData=const
    [
  {
    "name":"Joel",
    "profilePic":"data:image/png;base64,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",
    "postImage":"https://neonzastudio.com/cdn/shop/products/1_64b0ffdc-8cd7-43f5-8cef-971341a40527.webp?v=1652167614",
    "location":"SBCE",
    "likes":"2.2M",
    "comment":"120K"
  },
  {
    "name":"Alaska",
    "profilePic":"https://static.vecteezy.com/system/resources/previews/005/419/157/original/female-user-profile-avatar-is-a-woman-a-character-for-a-screen-saver-with-emotions-illustration-on-a-white-isolated-background-vector.jpg",
    "postImage":"https://t3.ftcdn.net/jpg/04/02/08/38/360_F_402083813_4dLEweSrZCiooyhx4ihf5nLTNrRQuucp.jpg",
    "location":"Alappuzha",
    "likes":"625",
    "comment":"89"
  },
  {
    "name":"Mathew George",
    "profilePic":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4wkTPwUomJS3UgxWkRpVOTNCVfQ46PEdhCQ&s",
    "postImage":"https://t4.ftcdn.net/jpg/06/41/55/87/360_F_641558762_NSA5sf5mgLWZabgALXO7h1TsyTUUU6WV.jpg",
    "location":"Thodupuzha",
    "likes":"5",
    "comment":"0"
  },

  {
    "name":"Nihal Isaf",
    "profilePic":"https://cdn1.iconfinder.com/data/icons/user-pictures/101/malecostume-512.png",
    "postImage":"https://t3.ftcdn.net/jpg/05/54/53/30/360_F_554533035_Qh3qctqPzAiAefyAesYOx0RmxvPZofbd.jpg",
    "location":"Adoor",
    "likes":"1.3k",
    "comment":"135"
  },
  {
    "name":"Costacurta",
    "profilePic":"https://thumbs.dreamstime.com/b/alessandro-costacurta-action-match-milan-italy-may-g-meazza-san-siro-stadium-uefa-champions-league-fc-inter-ac-189460815.jpg",
    "postImage":"https://pbs.twimg.com/media/DyFAGaKV4AAY5MJ?format=jpg&name=4096x4096",
    "location":"Italy",
    "likes":"587k",
    "comment":"98k"
  },
  {
    "name":"Eminem",
    "profilePic":"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/bb8708a0-9d11-482a-aada-7c69a40ed30a/dgcxxj1-13580644-58c0-46ae-9dc6-b8da4d28dbb9.png/v1/fill/w_600,h_600,q_80,strp/eminem_caricature_avatar_by_purnamaaji11_dgcxxj1-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2JiODcwOGEwLTlkMTEtNDgyYS1hYWRhLTdjNjlhNDBlZDMwYVwvZGdjeHhqMS0xMzU4MDY0NC01OGMwLTQ2YWUtOWRjNi1iOGRhNGQyOGRiYjkucG5nIiwiaGVpZ2h0IjoiPD02MDAiLCJ3aWR0aCI6Ijw9NjAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLndhdGVybWFyayJdLCJ3bWsiOnsicGF0aCI6Ilwvd21cL2JiODcwOGEwLTlkMTEtNDgyYS1hYWRhLTdjNjlhNDBlZDMwYVwvcHVybmFtYWFqaTExLTQucG5nIiwib3BhY2l0eSI6OTUsInByb3BvcnRpb25zIjowLjQ1LCJncmF2aXR5IjoiY2VudGVyIn19.zY9k9efRjoIqfLmu-c3jwxq5NQH_rfC_LAqkq5tpbtc",
    "postImage":"https://external-preview.redd.it/eminem-announces-new-album-the-death-of-slim-shady-coup-de-v0-3bF0L_MI0cnboLFAkHJS2gyc9kEnwIfSBR_u3DCwVf8.jpg?auto=webp&s=937e5f53e7b4d91ea06e7f71b50e6f92fb1ac88c",
    "location":"U.S.A",
    "likes":"76M",
    "comment":"18M"
  }

];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
itemCount: feedData.length,

        itemBuilder:(context,index) {
          return Container(
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(feedData[index]["profilePic"]!),
                  ),
                  title: Text(
                    feedData[index]["name"]!,
                    style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  subtitle: Text(
                    feedData[index]["location"]!,
                    style: TextStyle(fontSize: 15),),
                  trailing: Icon(Icons.more_vert),
                ),
                SizedBox(
                  height: 380,
                  width: 500,
                  child: Image.network(feedData[index]["postImage"]!,
                    fit: BoxFit.fill,
                    width: double.infinity,),
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border),),
                    Text(feedData[index]["likes"]!),
                    IconButton(onPressed: (){ }, icon: Icon(Icons.comment),),
                    Text(feedData[index]["comment"]!),
                    IconButton(onPressed: (){}, icon: Icon(Icons.send))
                  ],
                )
              ],
            ),
          );
        }
    );
  }
}
