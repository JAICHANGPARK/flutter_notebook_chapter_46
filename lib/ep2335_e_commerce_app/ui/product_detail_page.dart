import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            bottom: 240,
            child: PageView(
              scrollDirection: Axis.vertical,
              children: [
                Image.network(
                  "https://cdn.pixabay.com/photo/2019/08/07/07/05/woman-4390055_1280.jpg",
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://cdn.pixabay.com/photo/2022/06/21/23/11/asian-7276658_1280.jpg",
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://cdn.pixabay.com/photo/2021/05/13/18/18/fashion-6251535_1280.jpg",
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://cdn.pixabay.com/photo/2021/07/21/04/35/woman-6482214_1280.jpg",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Positioned(
            top: 16,
            left: 16,
            right: 16,
            child: SafeArea(
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.keyboard_arrow_left),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Product Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 0,
                          top: 0,
                          child: CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            child: Text("1", style: TextStyle(fontSize: 10)),
                          ),
                        ),
                        Center(
                          child: Icon(
                            Icons.shopping_basket_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 320,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: ListView(
                        children: [

                          ExpansionTile(title: Text("Product detail")),
                          Divider(

                          ),
                          ExpansionTile(title: Text("Size guide")),
                          Divider(),
                          ExpansionTile(title: Text("Product detail")),
                          Divider(),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      spacing: 8,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(4, (idx) {
                        return CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          radius: 20,
                          child: Text("S"),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              // height: 64,
              decoration: BoxDecoration(color: Colors.black),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Center(
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
