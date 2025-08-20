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
                  Text("Browse Shorts"),
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
              height: 60,
              child: Placeholder(),
            ),

            Gap(32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Text("All Videos"),
                  Spacer(),
                  Text("Latest First"),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
            Gap(12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Icon(Icons.my_location_outlined),
                  Text("Personal Growth & Focus"),
                ],
              ),
            ),
            Gap(12),
            SizedBox(height: 280, child: Placeholder()),
            Gap(24),
            Row(children: [Icon(Icons.bed), Text("Sleep & Mood")]),
            SizedBox(height: 280, child: Placeholder()),
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
