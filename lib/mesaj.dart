import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_whatsapp_clone_app/AnaSayfa.dart';
import 'package:flutter_whatsapp_clone_app/durum.dart';

class mesaj extends StatefulWidget {
  const mesaj({Key? key}) : super(key: key);

  @override
  _mesajState createState() => _mesajState();
}

bool _tiklanma = false;
List<String> mesajListesi = [];
bool mesajbalonu = false;

class _mesajState extends State<mesaj> {
  @override
  Widget build(BuildContext context) {
    TextEditingController t1 = TextEditingController();
    Size size = MediaQuery.of(context).size;
    String messagge = "";
    double sayi = messagge.length * 1.0;
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("lib/gorseller/kuzey.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 71),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      messagge = t1.text;
                      mesajListesi.add(messagge);
                      if (mesajListesi.length > 1) {
                        mesajbalonu = true;
                      }
                      print(mesajListesi);
                    });
                  },
                  child: Text(
                    "Kuzey Tekinoğlu",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Icon(Icons.video_call),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Icon(Icons.phone),
              ),
              Icon(Icons.more_vert_rounded),
            ],
          ),
        ),
        backgroundColor: wpRenk,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("lib/gorseller/wpBack.jpg"),
          fit: BoxFit.fill,
        )),
        child: Stack(
          children: [
            // mesaj kutucukları :
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 15, right: 15),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: IntrinsicWidth(
                        child: IntrinsicHeight(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Spacer(),
                                    Text(
                                        "Kurabiye var simit var neye bakıyon?"),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("21:17"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: ListView.builder(
                        itemCount: mesajListesi.length,
                        itemBuilder: (context, index) {
                          return Align(
                            alignment: Alignment.topRight,
                            child: IntrinsicWidth(
                              child: IntrinsicHeight(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(15),
                                          topLeft: Radius.circular(15),
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        children: [
                                          Spacer(),
                                          Text(mesajListesi[index]),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Text("21:17"),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // textfield alanı :

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: GestureDetector(
                  onTap: () {
                    tiklanma = true;
                  },
                  child: Row(
                    children: [
                      // textfield container
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 45,
                          width: 340,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.emoji_emotions_outlined,
                                  color: Colors.grey[600],
                                  size: 28,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                // textfield:

                                // iconlar:
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.link,
                                    color: Colors.grey[600],
                                    size: 28,
                                  ),
                                ),
                                Icon(
                                  Icons.camera_alt_rounded,
                                  color: Colors.grey[600],
                                  size: 28,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //mic
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: wpRenk),
                          child: _tiklanma
                              ? Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.mic,
                                  color: Colors.white,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // textfield
            GestureDetector(
              onTap: () {
                setState(() {
                  tiklanma = true;
                });
              },
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 65, right: 160, bottom: 5),
                  child: TextField(
                    obscureText: false,
                    style: TextStyle(color: Colors.black),
                    controller: t1,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
