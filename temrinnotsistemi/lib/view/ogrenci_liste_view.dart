import 'package:flutter/material.dart';
import 'package:temrinnotsistemi/view/ogrenci_list_view_model.dart';

class OgrenciListView extends OgrenciListViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //saveModel();
          getOgrenciList();
        },
      ),
      body: Card(
        elevation: 20,
        child: Center(
          child: Column(
            children: [
              Spacer(flex: 1),
              Expanded(flex: 3, child: buildWrapInputBody),
              Flexible(
                flex: 5,
                child: ListView.builder(
                    itemCount: ogrenciList.length,
                    itemBuilder: (context, index) => ListTile(
                          title: Text(ogrenciList[index].ogrenciAd.toString()),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Wrap get buildWrapInputBody {
    return Wrap(
      runSpacing: 20,
      children: [
        TextField(
            onChanged: (value) => ogrenciModel.ogrenciNu = int.tryParse(value),
            decoration: const InputDecoration(
                hintText: "Ogrenci Nu", border: OutlineInputBorder())),
        TextField(
            onChanged: (value) => ogrenciModel.ogrenciAd = value,
            decoration: const InputDecoration(
                hintText: "Ogrenci Ad", border: OutlineInputBorder())),
        TextField(
            onChanged: (value) => ogrenciModel.sinifId = int.tryParse(value),
            decoration: const InputDecoration(
                hintText: "Sınıfı", border: OutlineInputBorder())),
        ElevatedButton(
          child: const Text('Kaydet'),
          onPressed: saveModel,
        )
      ],
    );
  }
}
