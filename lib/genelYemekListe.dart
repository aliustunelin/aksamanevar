import 'package:aksama_ne_var/hive/yemekDB.dart';
import 'package:aksama_ne_var/yemekAyrinti.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class GenelYemekListesi extends StatefulWidget {
  GenelYemekListesi({Key key}) : super(key: key);

  @override
  _GenelYemekListesiState createState() => _GenelYemekListesiState();
}

class _GenelYemekListesiState extends State<GenelYemekListesi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 1,
        children: List.generate(Hive.box<YemekDB>("yemekBox").length, (index) {
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => YemekAyrinti()));
              },
              child: ListTile(
                title: Text(Hive.box<YemekDB>("yemekBox").getAt(index).baslik),
              ),
            ),
          );
        }),
      ),
    );
  }
}
