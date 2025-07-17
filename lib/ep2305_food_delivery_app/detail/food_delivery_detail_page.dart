import 'package:flutter/material.dart';

class FoodDeliveryDetailPage extends StatefulWidget {
  const FoodDeliveryDetailPage({super.key});

  @override
  State<FoodDeliveryDetailPage> createState() => _FoodDeliveryDetailPageState();
}

class _FoodDeliveryDetailPageState extends State<FoodDeliveryDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2019/10/10/19/40/tacos-4540402_1280.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(child: Placeholder()),
              ],
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            top: 8,
            child: SafeArea(child: Row(
                spacing: 16,
                children: [
              CircleAvatar(
                radius: 26,
              ),
              Spacer(),

              CircleAvatar(   radius: 26,),
              CircleAvatar(   radius: 26,),
            ])),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: MediaQuery.sizeOf(context).height / 1.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
