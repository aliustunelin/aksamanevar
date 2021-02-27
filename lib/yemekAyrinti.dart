import 'package:aksama_ne_var/hive/yemekDB.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class YemekAyrinti extends StatefulWidget {
  final int index;
  YemekAyrinti({Key key, this.index}) : super(key: key);

  @override
  _YemekAyrintiState createState() => _YemekAyrintiState();
}

class _YemekAyrintiState extends State<YemekAyrinti> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                  child: Card(
                      child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    Hive.box<YemekDB>("yemekBox").getAt(widget.index).baslik),
              ))),
            ),
            Divider(height: MediaQuery.of(context).size.width / 24),
            Image.network(
                Hive.box<YemekDB>("yemekBox").getAt(widget.index).resimLink),
            Divider(height: MediaQuery.of(context).size.width / 24),
            Container(
                child: Center(
                    child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(Hive.box<YemekDB>("yemekBox")
                    .getAt(widget.index)
                    .malzemeler
                    .toString()),
              ),
            ))),
            Divider(height: MediaQuery.of(context).size.width / 24),
            Container(
              child: Center(
                  child: Card(
                      child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    Hive.box<YemekDB>("yemekBox").getAt(widget.index).metin),
              ))),
            ),
          ],
        ),
      ),
    );
  }
}
