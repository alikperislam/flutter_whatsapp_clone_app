import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone_app/aramalar.dart';
import 'package:flutter_whatsapp_clone_app/durum.dart';
import 'package:flutter_whatsapp_clone_app/sohbetler.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

Color wpRenk = Color(0xFF008069);
bool seciliMi0 = true, seciliMi1 = false, seciliMi2 = false;
var sayfalar = [sohbetler(), durum(), aramalar()];
int sekme = 0;

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var sayfalar2 = sayfalar;
    var sayfalar22 = sayfalar2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: wpRenk,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(
            "WhatsApp",
            style: TextStyle(fontSize: 21),
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert_rounded,
            size: 30,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ----------------- AppBar :
              Container(
                width: double.infinity,
                height: size.height / 12,
                decoration: BoxDecoration(
                  color: wpRenk,
                ),
                // appbar kısmı
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      // alt kısım
                      Padding(
                        padding: const EdgeInsets.only(top: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.camera_alt_rounded,
                              color: Colors.grey[400],
                              size: 30,
                            ),
                            InkWell(
                              onTap: () {
                                // sohbet sayfası
                                sekme = 0;
                                setState(() {
                                  seciliMi0 = true;
                                  seciliMi1 = false;
                                  seciliMi2 = false;
                                });
                              },
                              child: Text(
                                "SOHBETLER",
                                style: TextStyle(
                                  color: seciliMi0
                                      ? Colors.white
                                      : Colors.grey[400],
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // durumlar sayfası
                                sekme = 1;
                                setState(() {
                                  seciliMi0 = false;
                                  seciliMi1 = true;
                                  seciliMi2 = false;
                                });
                              },
                              child: Text(
                                "DURUM",
                                style: TextStyle(
                                  color: seciliMi1
                                      ? Colors.white
                                      : Colors.grey[400],
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // aramalar sayfası
                                sekme = 2;
                                setState(() {
                                  seciliMi0 = false;
                                  seciliMi1 = false;
                                  seciliMi2 = true;
                                });
                              },
                              child: Text(
                                "ARAMALAR",
                                style: TextStyle(
                                  color: seciliMi2
                                      ? Colors.white
                                      : Colors.grey[400],
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: Row(
                          children: [
                            SizedBox(
                              width: seciliMi0
                                  ? 50
                                  : seciliMi1
                                      ? 160
                                      : 266,
                            ),
                            Container(
                              height: 2,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ekranlar:

              sayfalar22[sekme],
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: wpRenk,
        child: seciliMi0
            ? Icon(Icons.message)
            : seciliMi1
                ? Icon(Icons.camera_alt)
                : Icon(Icons.phone),
      ),
    );
  }
}
