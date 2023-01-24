import 'package:flutter/material.dart';

class ProductDetailWidget extends StatelessWidget {
  const ProductDetailWidget(
      {Key? key,
      required this.productName,
      required this.productUrl,
      required this.productContent})
      : super(key: key);

  final String productName;
  final String productUrl;
  final String productContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {Navigator.pop(context);},
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                      )),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    "X Marketing",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              ///product image
              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 3,blurRadius: 2,
                    )]
                  ),
                  child: Image.asset(productUrl,),
                ),
              ),
              ///product name
              SizedBox(height: 50,),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(productName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              ),
              ///Content
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(productContent,style: TextStyle(fontSize: 19),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
