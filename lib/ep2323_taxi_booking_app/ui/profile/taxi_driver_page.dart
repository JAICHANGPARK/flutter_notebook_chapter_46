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
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Icon(Icons.arrow_back),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
