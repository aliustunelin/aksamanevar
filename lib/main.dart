import 'package:aksama_ne_var/genelYemekListe.dart';
import 'package:aksama_ne_var/yemekList.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'hive/yemekDB.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final applicatonDocumentDir =
      await path_provider.getApplicationDocumentsDirectory();
  await Hive.initFlutter(applicatonDocumentDir.path);
  Hive.registerAdapter(YemekDBAdapter());
  await Hive.openBox<YemekDB>('yemekBox');
  //herseferinde aynı şeyleri migrate etmesin
  await Hive.box<YemekDB>("yemekBox").clear();
  for (var i = 0; i < yemekler.length; i++) {
    Hive.box<YemekDB>("yemekBox").add(YemekDB(
      baslik: yemekler[i]["baslik"],
      metin: yemekler[i]["metin"],
    ));
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akşama Ne Var?',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GenelYemekListesi(),
    );
  }
}
