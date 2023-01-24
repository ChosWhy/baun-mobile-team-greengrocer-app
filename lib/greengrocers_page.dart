import 'package:flutter/material.dart';
import 'package:manav_app/widgets/product_card_widget.dart';

class GreenGrocerPage extends StatelessWidget {
  GreenGrocerPage({Key? key}) : super(key: key);

  List<String> productUrl = [
    "assets/images/strawberry.jpg",
    "assets/images/apple.jpg",
    "assets/images/pear.jpg",
    "assets/images/cherry.jpg",
    "assets/images/mandarin.jpg",
    "assets/images/orange.jpg",
    "assets/images/quince.jpg",
    "assets/images/kiwi.jpg",
    "assets/images/grapes.jpg",
    "assets/images/plum.jpg",
    "assets/images/date.jpg",
    "assets/images/blackmulberry.jpg",
    "assets/images/raspberry.jpg",
    "assets/images/melon.jpg",
    "assets/images/watermelon.png",
    "assets/images/apricot.jpg",
    "assets/images/banana.jpg",
    "assets/images/peach.jpg",
    "assets/images/blueberry.jpg",
    "assets/images/rosehip.jpg",
  ];
  Map<String, String> fruitAndVegatableName = {
    "Çilek": "Çilek bir meyvedir.",
    "Elma": "Elma bir meyvedir.",
    "Armut": "Armut bir meyvedir.",
    "Kiraz": "Kiraz bir meyvedir.",
    "Mandalina": "Mandalina bir meyvedir.",
    "Portakal": "Portakal bir meyvedir.",
    "Ayva": "Ayva bir meyvedir.",
    "Kivi": "Kivi bir meyvedir.",
    "Üzüm": "Üzüm bir meyvedir.",
    "Erik": "Erik bir meyvedir.",
    "Hurma": "Hurma bir meyvedir.",
    "Karadut": "Karadut bir meyvedir.",
    "Frambuaz": "Frambuaz bir meyvedir.",
    "Kavun": "Kavun bir meyvedir.",
    "Karpuz": "Karpuz bir meyvedir.",
    "Kayısı": "Kayısı bir meyvedir.",
    "Muz": "Muz bir meyvedir.",
    "Şeftali": "Şeftali bir meyvedir.",
    "Yaban Mersini": "Yaban Mersini bir meyvedir.",
    "Kuşburnu": "Kuşburnu bir meyvedir.",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Green Grocer"),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent),
      body: GridView.builder(
          itemCount: fruitAndVegatableName.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(
                    top: 6, bottom: 6, right: 10, left: 10),
                child: ProductCard(
                  productUrl: productUrl[index],
                  productName: fruitAndVegatableName.keys.elementAt(index),
                  productContent: fruitAndVegatableName.values.elementAt(index),
                ),
              )),
    );
  }
}
