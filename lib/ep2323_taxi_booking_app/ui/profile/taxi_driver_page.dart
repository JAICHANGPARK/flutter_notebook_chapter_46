import 'package:flutter/material.dart';

class TaxiDriverPage extends StatefulWidget {
  const TaxiDriverPage({super.key});

  @override
  State<TaxiDriverPage> createState() => _TaxiDriverPageState();
}

class _TaxiDriverPageState extends State<TaxiDriverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 246, 246, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 16,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Drivers Details",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              CircleAvatar(radius: 60),
              Text('Dream Walker', style: TextStyle(fontSize: 24)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  spacing: 12,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on_outlined, color: Colors.blue),
                    Text("South Korea", style: TextStyle(fontSize: 16)),
                    Icon(Icons.translate, color: Colors.green),
                    Text("Korean", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      spacing: 8,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "1,600km",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text("Ride Experience"),
                      ],
                    ),
                    Column(
                      spacing: 8,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "4.9",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text("Rating"),
                      ],
                    ),
                    Column(
                      spacing: 8,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "4 Years",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text("Experience"),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                spacing: 4,
                children: [
                  Text(
                    "Reviews",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text("(150)", style: TextStyle(fontSize: 12)),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text("View All"),
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                      foregroundColor: Colors.black,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      height: 180,
                      margin: EdgeInsets.only(bottom: 16),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          Row(
                            spacing: 12,
                            children: [
                              Container(
                                height: 54,
                                width: 54,
                                decoration: BoxDecoration(color: Colors.blue),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 6,
                                  children: [
                                    Text("Dreamwalker"),
                                    Text("Passenger"),
                                  ],
                                ),
                              ),
                              Icon(Icons.star_border),
                              Text("5.0"),
                            ],
                          ),
                          Text(
                            "orem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in",
                            maxLines: 3,
                            style: TextStyle(fontSize: 15, height: 1.8),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
