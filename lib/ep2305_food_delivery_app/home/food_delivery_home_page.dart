import 'package:flutter/material.dart';

class FoodDeliveryHomePage extends StatefulWidget {
  const FoodDeliveryHomePage({super.key});

  @override
  State<FoodDeliveryHomePage> createState() => _FoodDeliveryHomePageState();
}

class _FoodDeliveryHomePageState extends State<FoodDeliveryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [Expanded(child: Column(children: [
                Row(
                  children: [
                    Icon(Icons.location_on,),
                    Text("Location")
                  ],
                ),
                Text("Gangnam Street, Seoul")

              ]))
              ,
              Container(
                height: 54,
                width: 54,
                child: Placeholder(),
              )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
