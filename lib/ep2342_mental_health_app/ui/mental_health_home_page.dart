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
            Column(
              children: [
                Text("Browse Shorts"),
                Gap(8),
                Text("Browse shorts from freud AI Team"),
              ],
            ),

            Gap(52),
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
            Gap(16),
            SizedBox(height: 60, child: Placeholder()),
            Gap(32),
            Row(
              children: [
                Text("All Videos"),
                Spacer(),
                Text("Latest First"),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
            Gap(12),
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
            Gap(24),
            Row(
              children: [
                Icon(Icons.bed),
                Text("Sleep & Mood"),
              ],
            ),
            SizedBox(
              height: 280,
              child: Placeholder(),
            ),
            Center(
              child: OutlinedButton.icon(onPressed: (){}, label: Text("Load More"),
              icon: Icon(Icons.add),),
            )
          ],
        ),
      ),
    );
  }
}
