import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Browse Shorts",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: Colors.brown,
                    ),
                  ),
                  Gap(8),
                  Text("Browse shorts from freud AI Team"),
                ],
              ),
            ),

            Gap(32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search for a short video..",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Icon(Icons.filter_list_sharp),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Gap(16),

            Container(
              padding: EdgeInsets.only(left: 16),
              height: 48,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 12),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.grey),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12),

                    child: Row(
                      spacing: 6,
                      children: [Icon(Icons.bedtime_outlined), Text("Sleep")],
                    ),
                  );
                },
              ),
            ),

            Gap(42),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                spacing: 6,
                children: [
                  Text(
                    "All Videos",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  Text("Latest First", style: TextStyle(fontSize: 15)),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
            Gap(12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                spacing: 6,
                children: [
                  Icon(
                    Icons.my_location_outlined,
                    color: Colors.grey,
                    size: 18,
                  ),
                  Text(
                    "Personal Growth & Focus",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
            Gap(12),
            Container(
              height: 280,
              padding: EdgeInsets.only(left: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 16),
                    width: 180,
                    child: Placeholder(),
                  );
                },
              ),
            ),
            Gap(32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                spacing: 6,
                children: [
                  Icon(Icons.bed),
                  Text(
                    "Sleep & Mood",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Gap(12),
            Container(
              height: 280,
              padding: EdgeInsets.only(left: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 16),
                    width: 180,
                    child: Placeholder(),
                  );
                },
              ),
            ),
            Gap(32),
            Center(
              child: OutlinedButton.icon(
                onPressed: () {},
                label: Text("Load More"),
                icon: Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
