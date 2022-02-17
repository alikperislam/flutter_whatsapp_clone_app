import 'package:flutter/material.dart';

import 'AnaSayfa.dart';

class aramalar extends StatefulWidget {
  const aramalar({Key? key}) : super(key: key);

  @override
  _aramalarState createState() => _aramalarState();
}

class _aramalarState extends State<aramalar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              arama(
                "safak",
                "Şafak Seyzırs",
                "(2) 11 şubat 22:21",
                Icon(
                  Icons.phone,
                  color: wpRenk,
                ),
                Icon(
                  Icons.compare_arrows,
                  color: wpRenk,
                ),
              ),
              arama(
                "ronaldo",
                "Ronaldo",
                "9 şubat 15:36",
                Icon(
                  Icons.video_call,
                  color: wpRenk,
                ),
                Icon(
                  Icons.compare_arrows,
                  color: Colors.red,
                ),
              ),
              arama(
                "mbappe",
                "Mbappe",
                "8 şubat 19:18",
                Icon(
                  Icons.video_call,
                  color: wpRenk,
                ),
                Icon(
                  Icons.compare_arrows,
                  color: wpRenk,
                ),
              ),
              arama(
                "safak",
                "Şafak Seyzırs",
                "7 şubat 14:42",
                Icon(
                  Icons.phone,
                  color: wpRenk,
                ),
                Icon(
                  Icons.compare_arrows,
                  color: Colors.red,
                ),
              ),
              arama(
                "messi",
                "Messi",
                "5 şubat 22:58",
                Icon(
                  Icons.phone,
                  color: wpRenk,
                ),
                Icon(
                  Icons.compare_arrows,
                  color: Colors.red,
                ),
              ),
              arama(
                "kuzey",
                "Kuzey Tekinoğlu",
                "(5) 4 şubat 18:30",
                Icon(
                  Icons.video_call,
                  color: wpRenk,
                ),
                Icon(
                  Icons.compare_arrows,
                  color: wpRenk,
                ),
              ),
              arama(
                "sneijder",
                "Sneijder",
                "(2) 3 şubat 15:01",
                Icon(
                  Icons.phone,
                  color: wpRenk,
                ),
                Icon(
                  Icons.compare_arrows,
                  color: Colors.red,
                ),
              ),
              arama(
                "alex",
                "Alex de Souza",
                "(3) 29 ocak 16:37",
                Icon(
                  Icons.phone,
                  color: wpRenk,
                ),
                Icon(
                  Icons.compare_arrows,
                  color: wpRenk,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget arama(String image, String name, String msg, Icon ico, Icon aramaIco) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, top: 15),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("lib/gorseller/$image.jpg"),
                  fit: BoxFit.fill),
            ),
          ),
          // colummn: name - msg
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$name",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    aramaIco,
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "$msg",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          ico,
        ],
      ),
    );
  }
}
