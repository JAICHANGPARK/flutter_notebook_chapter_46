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
              Text('Dream Walker'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined),
                  Text("South Korea"),
                  Icon(Icons.translate),
                  Text("Korean"),
                ],
              ),
              Container(
                height: 100,
                child: Placeholder(),
              ),
              Row(
                children: [
                  Text("Reviews"),
                  Text("(150)"),
                  Spacer(),
                  TextButton(onPressed: (){}, child: Text("View All"),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
