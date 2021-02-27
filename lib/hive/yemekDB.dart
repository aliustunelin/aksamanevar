//hikeyenin soru,cevap ve başlık özelliklerinin tek değişende tutulmasını sağlayan değişken

import 'package:hive/hive.dart';

part 'yemekDB.g.dart';

@HiveType(typeId: 0)
class YemekDB {
  @HiveField(0)
  String baslik;
  @HiveField(1)
  List<String> malzemeler;
  @HiveField(2)
  String metin;
  @HiveField(3)
  String resimLink;

  // Just an example for next attribute
  // @HiveField(1)
  // bool checked;

  YemekDB({this.baslik, this.malzemeler, this.metin, this.resimLink});
}
