import 'package:app_new/models/catalog.dart';
import 'package:app_new/widgets/drawer.dart';
import 'package:app_new/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 30;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Catalog App")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,//CatalogModel.items.length
          itemBuilder: (context, index) {
            return ItemWidget(item: dummyList[index]);//CatalogModel.items[index]
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
