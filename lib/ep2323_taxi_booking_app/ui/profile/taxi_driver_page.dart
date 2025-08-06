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
              Row(
                spacing: 12,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined, color: Colors.blue),
                  Text("South Korea", style: TextStyle(fontSize: 16)),
                  Icon(Icons.translate, color: Colors.green),
                  Text("Korean", style: TextStyle(fontSize: 16)),
                ],
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(12),),
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("1,600km"), Text("Ride Experience")],
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("4.9"), Text("Rating")]),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("4 Years"), Text("Experience")]),
                  ],
                ),
              ),
              Row(
                children: [
                  Text("Reviews"),
                  Text("(150)"),
                  Spacer(),
                  TextButton(onPressed: () {}, child: Text("View All")),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      height: 180,
                      margin: EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(color: Colors.white),
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
