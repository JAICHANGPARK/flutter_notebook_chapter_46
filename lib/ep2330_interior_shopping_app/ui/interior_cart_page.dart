import 'package:flutter/material.dart';

class InteriorCartPage extends StatefulWidget {
  const InteriorCartPage({super.key});

  @override
  State<InteriorCartPage> createState() => _InteriorCartPageState();
}

class _InteriorCartPageState extends State<InteriorCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 16,
            children: [
              SizedBox(
                height: 60,
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Shopping cart",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: List.generate(3, (idx){
                        return Container(
                          margin: EdgeInsets.only(bottom: 16),
                          height: 140,
                          child: Placeholder(),
                        );
                      }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shipping"),
                        Text("Free")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Subtotal"),
                        Text("\$313.98")
                      ],
                    )
                  ],
                ),
              )),
              Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.black,
                ),
                padding: EdgeInsets.symmetric(vertical: 26),

                child: Center(
                  child: Text(
                    "Pay now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
