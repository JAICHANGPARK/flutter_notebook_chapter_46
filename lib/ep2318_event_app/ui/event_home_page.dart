import 'package:flutter/material.dart';

class EventHomePage extends StatefulWidget {
  const EventHomePage({super.key});

  @override
  State<EventHomePage> createState() => _EventHomePageState();
}

class _EventHomePageState extends State<EventHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      spacing: 16,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(),
                            Expanded(child: Column()),
                            CircleAvatar(),
                          ],
                        ),
                        Row(
                          spacing: 16,
                          children: [
                            Expanded(child: Container()),
                            Container(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: SingleChildScrollView(
                    
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Categories"),
                      TextButton(onPressed: () {}, child: Text("See all")),
                    ],
                  ),

                  Container(
                    height: 52,
                    child: Placeholder(),
                  ),
                  Container(
                    height: 360,
                    child: Placeholder(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Top 10 in London"),
                      TextButton(onPressed: () {}, child: Text("See all")),
                    ],
                  ),
                  Container(
                    height: 320,
                    child: Placeholder(),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
