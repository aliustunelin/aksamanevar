//hikeyenin soru,cevap ve başlık özelliklerinin tek değişende tutulmasını sağlayan değişken

import 'package:hive/hive.dart';

part 'yemekDB.g.dart';

@HiveType(typeId: 0)
class YemekDB {
  @HiveField(0)
  String baslik;
  @HiveField(1)
  String metin;

  // Just an example for next attribute
  // @HiveField(1)
  // bool checked;

  YemekDB({this.baslik, this.metin});
}
