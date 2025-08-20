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
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
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
          SizedBox(height: 60, child: Placeholder()),
          Row(
            children: [
              Text("All Videos"),
              Spacer(),
              Text("Latest First"),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
          Row(
            children: [
              Icon(Icons.my_location_outlined),
              Text("Personal Growth & Focus"),
            ],
          ),
          SizedBox(
            height: 280,
            child: Placeholder(),
          ),
          Row(
            children: [
              Icon(Icons.bed),
              Text("Sleep & Mood"),
            ],
          ),
          SizedBox(
            height: 280,
            child: Placeholder(),
          )
        ],
      ),
    );
  }
}
