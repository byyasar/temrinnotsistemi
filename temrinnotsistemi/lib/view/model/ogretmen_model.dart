import 'package:temrinnotsistemi/core/init/database/database_provier.dart';
import 'package:temrinnotsistemi/view/model/ogrenci_model.dart';

class OgretmenDatabaseProvider extends DatabaseProvider<OgrenciModel> {
  @override
  Future<OgrenciModel?> getItem(int id) {
    // TODO: implement getItem
    throw UnimplementedError();
  }

  @override
  Future<List<OgrenciModel>?> getList() {
    // TODO: implement getList
    throw UnimplementedError();
  }

  @override
  Future<int?> insertItem(OgrenciModel model) {
    // TODO: implement insertItem
    throw UnimplementedError();
  }

  @override
  Future open() {
    // TODO: implement open
    throw UnimplementedError();
  }

  @override
  Future<int?> removeItem(int id) {
    // TODO: implement removeItem
    throw UnimplementedError();
  }

  @override
  Future<int?> updateItem(int id, OgrenciModel model) {
    // TODO: implement updateItem
    throw UnimplementedError();
  }
 
}
