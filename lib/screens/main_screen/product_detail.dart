import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: NetworkImage(
                "https://e7.pngegg.com/pngimages/1020/87/png-clipart-peppermint-spearmint-graphy-leaf-leaf-food-leaf.png"),
          ),
          Container(
              child: Column(
            children: [
              Row(
                children: [
                  Text("Fresh Mint"),
                  Text("\$5 / 50 gm"),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
