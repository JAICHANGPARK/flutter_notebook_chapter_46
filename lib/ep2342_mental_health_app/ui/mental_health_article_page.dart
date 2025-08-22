import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MentalHealthArticlePage extends StatefulWidget {
  const MentalHealthArticlePage({super.key});

  @override
  State<MentalHealthArticlePage> createState() =>
      _MentalHealthArticlePageState();
}

class _MentalHealthArticlePageState extends State<MentalHealthArticlePage> {
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Browse Articles",
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
                    height: 280,
                    decoration: ShapeDecoration(
                      shape: RoundedSuperellipseBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: Container()),
                        OverflowBar(children: [Text("Tag 1"), Text("Tag 2")]),
                        Text("How to Develop a Self-Care Routine That Sticks"),
                        Row(children: [CircleAvatar(), Text("Author Name")]),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
