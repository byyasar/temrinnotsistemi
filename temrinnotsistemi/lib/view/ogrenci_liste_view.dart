import 'package:flutter/material.dart';
import 'package:temrinnotsistemi/view/ogrenci_list_view_model.dart';

class OgrenciListView extends OgrenciListViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          saveModel();
        },
      ),
      body: Card(
        elevation: 20,
        child: Center(
          child: Wrap(
            runSpacing: 20,
            children: [
              TextField(
                  onChanged: (value) =>
                      ogrenciModel.ogrenciNu = int.tryParse(value),
                  decoration: InputDecoration(
                      hintText: "Ogrenci Nu", border: OutlineInputBorder())),
              TextField(
                  onChanged: (value) => ogrenciModel.ogrenciAd = value,
                  decoration: InputDecoration(
                      hintText: "Ogrenci Ad", border: OutlineInputBorder())),
              TextField(
                  onChanged: (value) =>
                      ogrenciModel.sinifId = int.tryParse(value),
                  decoration: InputDecoration(
                      hintText: "Sınıfı", border: OutlineInputBorder()))
            ],
          ),
        ),
      ),
    );
  }
}
