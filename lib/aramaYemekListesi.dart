//iki

import 'package:aksama_ne_var/hive/yemekDB.dart';
import 'package:aksama_ne_var/yemekAyrinti.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class AramaYemekListesi extends StatefulWidget {
  AramaYemekListesi({Key key}) : super(key: key);

  @override
  _AramaYemekListesiState createState() => _AramaYemekListesiState();
}

//list.generate içinde istenilenleri listeleyen fonk yazabirim

class _AramaYemekListesiState extends State<AramaYemekListesi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: GridView.count(
          crossAxisCount: 1,
          children:
              List.generate(Hive.box<YemekDB>("yemekBox").length, (index) {
            return Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => YemekAyrinti(index: index)));
                },
                child: ListTile(
                  title:
                      Text(Hive.box<YemekDB>("yemekBox").getAt(index).baslik),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

void getArananYemekListesi() {
  for (int i = 0; i < Hive.box<YemekDB>("yemekBox").length; i++) {
    if (Hive.box<YemekDB>("yemekBox").getAt(i).baslik == "Mantı") {
      //burada 2nci hiv'e ataama
      /*Hive.box<ArananYemekDB>("yemekBox").add(ArananYemekDB(
        baslik: yemekler[i]["baslik"],
        malzemeler: yemekler[i]["malzemeler"],
        metin: yemekler[i]["metin"],
        resimLink: yemekler[i]["resimLink"],
      ));*/
    }
  }
}

//Hive.box<YemekDB>("yemekBox").getAt(index).baslik

/*
  List<int> getArananYemekindisi() {
    for (int i = 0; i < Hive.box<YemekDB>("yemekBox").length; i++) {
      if (Hive.box<YemekDB>("yemekBox").getAt(i).baslik == "Mantı") {
        arananYemeklerindisleri.add(i);
      }
    }
    return arananYemeklerindisleri;
  }
}
*/
//Hive.box<YemekDB>("yemekBox").getAt(index).baslik
