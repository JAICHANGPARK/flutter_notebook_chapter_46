import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MentalHealthQuizzesPage extends StatefulWidget {
  const MentalHealthQuizzesPage({super.key});

  @override
  State<MentalHealthQuizzesPage> createState() =>
      _MentalHealthAQuizzesPageState();
}

class _MentalHealthAQuizzesPageState extends State<MentalHealthQuizzesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Browse Quizzes",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    color: Colors.brown,
                  ),
                ),
                Gap(8),
                Text("Browse multiple hi-quality articles"),
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
                    shape: StadiumBorder(side: BorderSide(color: Colors.grey)),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search for on article...",
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
            height: 42,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 12),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(side: BorderSide(color: Colors.grey)),
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
          Gap(32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              spacing: 6,
              children: [
                Text(
                  "All Articles",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Spacer(),
                Text("Latest First", style: TextStyle(fontSize: 15)),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
          Gap(12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: ShapeDecoration(
                      shape: RoundedSuperellipseBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.only(bottom: 12),
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 16,
                            children: [
                              Container(
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(
                                    side: BorderSide(color: Colors.grey),
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                child: Text(
                                  "Not Started",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Text(
                                "Emotional Intelligence Quiz",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                spacing: 6,
                                children: [
                                  Icon(Icons.access_time, size: 18),
                                  Text("15 minutes"),
                                  Gap(8),
                                  Icon(Icons.filter_vintage_outlined, size: 18),
                                  Text("25 Questions"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(radius: 42),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.keyboard_arrow_left),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.keyboard_arrow_right),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
