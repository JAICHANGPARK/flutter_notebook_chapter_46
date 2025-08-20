import 'package:flutter/material.dart';

class MentalHealthHomePage extends StatefulWidget {
  const MentalHealthHomePage({super.key});

  @override
  State<MentalHealthHomePage> createState() => _MentalHealthHomePageState();
}

class _MentalHealthHomePageState extends State<MentalHealthHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Browse Shorts"),
          Text("Browse shorts from freud AI Team"),
          Container(
            decoration: ShapeDecoration(
              shape: StadiumBorder(side: BorderSide(color: Colors.grey)),
            ),
            child: Row(
              children: [
                Icon(Icons.search),
                Expanded(child: TextField()),
                Icon(Icons.filter_list_sharp),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
