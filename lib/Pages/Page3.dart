import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project1/Pages/Data.dart';
import 'package:project1/Pages/productWidget.dart';
import 'package:project1/widgets/drawer.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List<Products> newList = [];
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson = await rootBundle.loadString("image/Fiel/Catalog.json");
    // print(catalogJson);
    final deCodedata = jsonDecode(catalogJson);
    final list = Mydata.fromJson(deCodedata);
    // print(deCodedata);
    print(list.products!.length!);

    setState(() {
      newList = list.products!;
    });

    //  print(productData);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Cart Place",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView.builder(
          itemCount: newList.length,
          itemBuilder: (context, index) {
            return ProductWidget(
              product: newList[index],
            );
          },
        ),
        drawer: MyDrawer(),
      )),
    );
  }
}
