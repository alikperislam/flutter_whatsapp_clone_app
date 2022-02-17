import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone_app/AnaSayfa.dart';

class durum extends StatefulWidget {
  const durum({Key? key}) : super(key: key);

  @override
  _durumState createState() => _durumState();
}

bool tiklanma = false;

class _durumState extends State<durum> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          durumum("pp", "Durumum", "Durum güncellemesi eklemek için dokunun",
              false),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(
              "Görülen güncellemeler",
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),
          ),
          durumlar("k", "Kuzey Tekinoğlu", "Bugün 17:32", false),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              children: [
                Text(
                  "Sona alınan güncellemeler",
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                Spacer(),
                IconButton(
                  icon: tiklanma
                      ? Icon(
                          Icons.keyboard_arrow_up_rounded,
                          color: wpRenk,
                        )
                      : Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: wpRenk,
                        ),
                  onPressed: () {
                    setState(() {
                      tiklanma = !tiklanma;
                    });
                  },
                )
              ],
            ),
          ),
          //sona alınanlar :

          Stack(
            children: [
              Column(
                children: [
                  durumlar("alex", "Alex de Souza", "dün 22:04", false),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: durumlar("quaresma", "Quaresma", "dün 15:16", false),
                  ),
                  durumlar("ronaldo", "Ronaldo", "dün 10:29", false),
                ],
              ),
              Container(
                  height: 220,
                  width: 350,
                  color: tiklanma ? Colors.transparent : Color(0xFFFAFAFA)),
            ],
          ),
        ],
      ),
    );
  }

  Widget durumum(String image, String name, String msg, bool blue) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 15),
      child: Row(
        children: [
          //image
          Stack(
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
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 37),
                child: Icon(
                  Icons.add_box_rounded,
                  color: Colors.green[700],
                ),
              )
            ],
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
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
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
        ],
      ),
    );
  }

  Widget durumlar(String image, String name, String msg, bool blue) {
    return Padding(
      padding: const EdgeInsets.only(),
      child: Row(
        children: [
          //image
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  style: BorderStyle.solid,
                  width: 2.0,
                  color: Colors.grey,
                ),
                left: BorderSide(
                    style: BorderStyle.solid, width: 2.0, color: Colors.grey),
                right: BorderSide(
                    style: BorderStyle.solid, width: 2.0, color: Colors.grey),
                bottom: BorderSide(
                    style: BorderStyle.solid, width: 2.0, color: Colors.grey),
              ),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
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
        ],
      ),
    );
  }
}
