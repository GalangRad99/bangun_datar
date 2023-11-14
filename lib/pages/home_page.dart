import 'package:bangun_datar_app/pages/panjang_page.dart';
import 'package:bangun_datar_app/pages/persegi_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green.shade300,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PersegiPage()));
              },
              child: CostumMenu(
                  imageAssets: "assets/persegi.png", title: "Persegi")),

          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PanjangPage()));
              },
              child: CostumMenu(
                  imageAssets: "assets/panjang.png", title: "Persegi Panjang")),
          Row(
            children: [
              Expanded(
                  child: CostumMenu(
                      imageAssets: "assets/segitiga.png", title: "Segitiga"),
              ),
              Expanded(
                  child: CostumMenu(
                      imageAssets: "assets/segitiga.png", title: "Segitiga")),
            ],
          ),
        ],
      ),
    );
  }
}

class CostumMenu extends StatelessWidget {
  const CostumMenu({
    super.key,
    required this.imageAssets,
    required this.title,
  });

  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(color: Colors.green),
      child: Column(
        children: [
          Image.asset(imageAssets, height: 100),
          Text(title),
        ],
      ),
    );
  }
}
