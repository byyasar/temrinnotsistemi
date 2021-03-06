import 'package:sqflite/sqflite.dart';
import 'package:temrinnotsistemi/core/init/database/database_model.dart';
import 'package:temrinnotsistemi/core/init/database/database_provier.dart';
import 'package:temrinnotsistemi/view/model/ogrenci_model.dart';

class OgrenciDatabaseProvider extends DatabaseProvider {
  final String _ogrenciDatabaseName = "ogrenciDatabase1";
  final String _ogrenciTableName = "ogrenci";
  final String _columnOgrenciAd = "ogrenciAd";
  final String _columnOgrenciNu = "ogrenciNu";
  final String _columnOgrenciSinifId = "sinifId";
  final String _columnOgrenciId = "Id";

  late Database database;
  final int _version = 2;
  Future<void> open() async {
    database = await openDatabase(_ogrenciDatabaseName, version: _version,
        onCreate: (db, version) {
      createTable(db);
    });
  }

  void createTable(Database db) {
    db.execute('''CREATE TABLE $_ogrenciTableName ( 
          $_columnOgrenciId INTEGER PRIMARY KEY AUTOINCREMENT,
          $_columnOgrenciAd VARCHAR(20), 
          $_columnOgrenciNu INTEGER ,
          $_columnOgrenciSinifId INTEGER)''');
  }
/*
  Future<OgrenciModel?> getOgrenci(int id) async {
    if (database != null) open();
    final ogrenciMap = await database.query(
      _ogrenciTableName,
      columns: [_columnOgrenciId, _columnOgrenciAd],
      where: '$_columnOgrenciId=?',
      whereArgs: [id],
    );
    if (ogrenciMap.isNotEmpty) {
      return OgrenciModel.fromJson(ogrenciMap.first);
    } else {
      return null;
    }
  }*/

  @override
  Future<void> close() async {
    await database.close();
  }

  @override
  Future<DatabaseModel?> getItem(int id) async {
    if (database != null) open();
    final ogrenciMap = await database.query(
      _ogrenciTableName,
      columns: [_columnOgrenciId, _columnOgrenciAd],
      where: '$_columnOgrenciId=?',
      whereArgs: [id],
    );
    if (ogrenciMap.isNotEmpty) {
      return OgrenciModel.fromJson(ogrenciMap.first);
    } else {
      return null;
    }
  }

/*  Future<List<OgrenciModel>> getOgrenciList() async {
    if (database != null) open();
    List<Map> ogrenciMaps = await database.query(_ogrenciTableName);
    return ogrenciMaps.map((e) => OgrenciModel.fromJson(e)).toList();
  }*/
  @override
  Future<List<OgrenciModel>> getList() async {
    if (database != null) open();
    List<Map> ogrenciMaps = await database.query(_ogrenciTableName);
    return ogrenciMaps.map((e) => OgrenciModel.fromJson(e)).toList();
  }

/* Future<int?> ekleOgrenci(OgrenciModel ogrenciModel) async {
    if (database != null) open();
    final ogrenciMap =
        await database.insert(_ogrenciTableName, ogrenciModel.toJson());
    return ogrenciMap;
  } */
  @override
  Future<int?> insertItem(ogrenciModel) async {
    if (database != null) open();
    final ogrenciMap =
        await database.insert(_ogrenciTableName, ogrenciModel.toJson());
    return ogrenciMap;
  }

/*Future<int?> deleteOgrenci(int id) async {
    if (database != null) open();
    final ogrenciMap = await database.delete(
      _ogrenciTableName,
      where: '$_columnOgrenciId=?',
      whereArgs: [id],
    );
    return ogrenciMap;
  }*/
  @override
  Future<int?> removeItem(int id) async {
    if (database != null) open();
    final ogrenciMap = await database.delete(
      _ogrenciTableName,
      where: '$_columnOgrenciId=?',
      whereArgs: [id],
    );
    return ogrenciMap;
  }
  /*Future<int?> updateOgrenci(int id, OgrenciModel ogrenciModel) async {
    if (database != null) open();
    final ogrenciMap = await database.update(
      _ogrenciTableName,
      ogrenciModel.toJson(),
      where: '$_columnOgrenciId=?',
      whereArgs: [id],
    );
    return ogrenciMap;
  } */

  @override
  Future<int?> updateItem(int id, DatabaseModel ogrenciModel) async {
    if (database != null) open();
    final ogrenciMap = await database.update(
      _ogrenciTableName,
      ogrenciModel.toJson(),
      where: '$_columnOgrenciId=?',
      whereArgs: [id],
    );
    return ogrenciMap;
  }
}
