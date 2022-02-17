import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone_app/AnaSayfa.dart';
import 'package:flutter_whatsapp_clone_app/mesaj.dart';

class sohbetler extends StatefulWidget {
  const sohbetler({Key? key}) : super(key: key);

  @override
  _sohbetlerState createState() => _sohbetlerState();
}

class _sohbetlerState extends State<sohbetler> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.file_download_outlined,
                          color: Colors.green,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Arşivlenmiş",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                _mesajlar("messi", "Messi", "Angara Messi", "23:57", false),
                _mesajlar("ronaldo", "Ronaldo", "CR7", "23:26", false),
                _mesajlar(
                    "kkaraman", "Goat Kenan Karaman", "GOAT", "21:38", false),
                GestureDetector(
                  onTap: () {
                    // mesaj ekranına yönlendirecek:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => mesaj()));
                  },
                  child: _mesajlar("kuzey", "Kuzey Tekinoğlu",
                      "Kurabiye var simit var neye bakıyon?", "18:18", false),
                ),
                _mesajlar("safak", "Şafak Seyzırs",
                    "Uzun süre görüşmeyelim bilader be", "15:13", false),
                _mesajlar(
                    "sneijder", "Sneijder", "Allahım gooool", "14:38", false),
                _mesajlar("drogba", "Drogba", "Harika bir gol, efsane bir gol",
                    "13:51", false),
                _mesajlar(
                    "alex", "Alex de Souza", "Alex Alex Alex", "13:20", false),
                _mesajlar("quaresma", "Quaresma", "Q7", "12:05", false),
                _mesajlar("muslera", "Muslera", "Lastik gibi uzadı muslera",
                    "09:47", false),
                _mesajlar(
                    "mbappe", "Mbappe", "Mbappe > Haaland", "07:07", false),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _mesajlar(
      String image, String name, String msg, String time, bool blue) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          //image
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
                    Icon(
                      Icons.check,
                      color: blue ? Colors.blue : Colors.black,
                    ),
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
          //time:
          Align(
              alignment: Alignment.topCenter,
              child: Text(
                "$time",
                style: TextStyle(color: Colors.grey[600]),
              )),
        ],
      ),
    );
  }
}
