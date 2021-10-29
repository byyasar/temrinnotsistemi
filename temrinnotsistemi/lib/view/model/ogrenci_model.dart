class OgrenciModel {
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ogrenciAd'] = ogrenciAd;
    data['sinifId'] = sinifId;
    data['ogrenciNu'] = ogrenciNu;
    return data;
  }
}
