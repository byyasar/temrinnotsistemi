import 'package:temrinnotsistemi/core/init/database/database_model.dart';

class OgrenciModel extends DatabaseModel<OgrenciModel> {
  String? ogrenciAd;
  int? sinifId;
  int? ogrenciNu;

  OgrenciModel(
      {required this.ogrenciAd,
      required this.ogrenciNu,
      required this.sinifId});

  OgrenciModel.fromJson(Map<dynamic, dynamic> json) {
    ogrenciAd = json['ogrenciAd'];
    sinifId = json['sinifId'];
    ogrenciNu = json['ogrenciNu'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ogrenciAd'] = ogrenciAd;
    data['sinifId'] = sinifId;
    data['ogrenciNu'] = ogrenciNu;
    return data;
  }

  @override
  OgrenciModel fromJson(Map<String, dynamic> json) {
    return OgrenciModel.fromJson(json);
  }
}
