import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class TaxiBookingHomePage extends StatefulWidget {
  const TaxiBookingHomePage({super.key});

  @override
  State<TaxiBookingHomePage> createState() => _TaxiBookingHomePageState();
}

class _TaxiBookingHomePageState extends State<TaxiBookingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200]!,
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(height: 52, width: 52, child: Placeholder()),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("100"),
                            Row(
                              children: [
                                Icon(HugeIcons.strokeRoundedWalletAdd01),
                                Text("Top up credit"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(height: 46, width: 46),
                    ],
                  ),
                  Text("Hello Dream,"),
                  Text("Where to go?"),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Color.fromRGBO(161, 165, 200, 1),
                ),
                padding: EdgeInsets.all(4),
                child: Row(
                  spacing: 4,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.blueAccent,
                      ),
                      child: Row(
                        spacing: 8,
                        children: [
                          Icon(
                            HugeIcons.strokeRoundedHome02,
                            color: Colors.white,
                          ),
                          Text("Home", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.article_outlined),
                    ),
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(HugeIcons.strokeRoundedPurse),
                    ),
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(HugeIcons.strokeRoundedUser03),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
