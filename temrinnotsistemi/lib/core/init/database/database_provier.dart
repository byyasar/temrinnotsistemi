import 'package:sqflite/sqflite.dart';
import 'package:temrinnotsistemi/core/init/database/database_model.dart';

abstract class DatabaseProvider<T extends DatabaseModel> {
  Future open();
  Future<T?> getItem(int id);
  Future<List<T>?> getList();
  Future<int?> updateItem(int id, T model);
  Future<int?> removeItem(int id);
  Future<int?> insertItem(T model);

  late Database database;
  Future<void> close() async {
    await database.close();
  }
}
