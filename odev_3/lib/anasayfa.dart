import 'package:flutter/material.dart';
import 'package:odev_3/image_duzenleme.dart';
import 'package:odev_3/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      backgroundColor: dark_200,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 30.0),
            child: Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: dark, borderRadius: BorderRadius.circular(15)),
                    child: Icon(
                      Icons.menu,
                      color: araRenk,
                      size: 30.0,
                    )),
                Container(
                    margin: const EdgeInsets.only(left: 20),
                    width: 270,
                    height: 50,
                    decoration: BoxDecoration(
                        color: dark, borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Text(
                            "Search movies ...                     ",
                            style: TextStyle(fontSize: 16.0, color: araRenk),
                          ),
                          Icon(
                            Icons.search,
                            color: araRenk,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
          Column(
            children: [
              ImageDuzenleme(
                  resimUrl: "resimler/netflix_logo.png", paddingLR: 150.0),
              ImageDuzenleme(
                  resimUrl: "resimler/hmc_name_logo.png", paddingLR: 50.0),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "Animasyon",
                  style: TextStyle(
                      fontSize: 20.0, color: dark, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 137.0, top: 8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: araRenk,
                    ),
                    Icon(
                      Icons.star,
                      color: araRenk,
                    ),
                    Icon(
                      Icons.star,
                      color: araRenk,
                    ),
                    Icon(
                      Icons.star,
                      color: araRenk,
                    ),
                    Icon(
                      Icons.star_half,
                      color: araRenk,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: dark),
                  child: Text(
                    "BUY MOVIE",
                    style: TextStyle(color: araRenk, fontSize: 20.0),
                  ),
                ),
              ),
              ImageDuzenleme(
                  resimUrl: "resimler/hmc_afis.jpeg", paddingLR: 70.0),
            ],
          ),
        ],
      ),
    );
  }
}
