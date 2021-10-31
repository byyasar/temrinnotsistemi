import 'package:flutter/material.dart';
import 'package:temrinnotsistemi/view/model/ogrenci_database_provider.dart';
import 'package:temrinnotsistemi/view/model/ogrenci_model.dart';
import 'ogrenci_list.dart';

abstract class OgrenciListViewModel extends State<OgrenciList> {
  late OgrenciDatabaseProvider ogrenciDatabaseProvider;
  OgrenciModel ogrenciModel =
      OgrenciModel(ogrenciAd: '', ogrenciNu: null, sinifId: null);
  List<OgrenciModel> ogrenciList = [];

  Future getOgrenciList() async {
    ogrenciList = await ogrenciDatabaseProvider.getList();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    ogrenciDatabaseProvider = OgrenciDatabaseProvider();
    ogrenciDatabaseProvider.open();
  }

  Future<void> saveModel() async {
    final result = await ogrenciDatabaseProvider.insertItem(ogrenciModel);
    print(result);
  }
}
