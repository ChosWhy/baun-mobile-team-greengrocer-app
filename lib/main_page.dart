import 'package:flutter/material.dart';
import 'package:manav_app/greengrocers_page.dart';
import 'package:manav_app/shop_page.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final Widget _greengrocerPage = GreenGrocerPage();
  final Widget _shopPage = ShopPage();
  final String _shopUrl = "assets/images/shop.png";
  final String _greengrocerUrl = "assets/images/greengrocer.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyCard(
                imageUrl: _shopUrl,
                color: Colors.blue,
                context: context,
                route: _shopPage),
            MyCard(
                imageUrl: _greengrocerUrl,
                color: Colors.red,
                context: context,
                route: _greengrocerPage),
          ],
        ),
      ),
    );
  }
}

///widget döndüren bir fonksiyon
Widget MyCard(
    {required String imageUrl,
    required Color color,
    required BuildContext context,
    required Widget route}) {
  return Expanded(
    child: Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => route));
        },
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Image.asset(imageUrl),
        ),
      ),
    ),
  );
}
