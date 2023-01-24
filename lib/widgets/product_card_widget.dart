import 'package:flutter/material.dart';
import 'package:manav_app/widgets/product_detail_widget.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.productUrl,
    required this.productName,
    required this.productContent,
  });

  final String productName;
  final String productUrl;
  final String productContent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetailWidget(
                      productName: productName,
                      productContent: productContent,
                      productUrl: productUrl,
                    )));
      },
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 2, spreadRadius: 1)
            ]),
        child: Center(
            child: SizedBox(
          child: Image.asset(productUrl),
          height: 170,
          width: 170,
        )),
      ),
    );
  }
}
