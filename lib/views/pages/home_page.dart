import 'package:aidy/views/widgets/course_card_widget.dart';
import 'package:flutter/material.dart';

final List<Map<String, dynamic>> courses = [
  {'title': 'Cell Biology', 'color': 'orange', 'percent': 90},
  {'title': 'Math', 'color': 'yellow', 'percent': 20},
  {'title': 'Chem', 'color': 'blue', 'percent': 44},
  {'title': 'English', 'color': 'purple', 'percent': 10},
  {'title': 'Yoruba', 'color': 'green', 'percent': 100},
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png',
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              style: TextStyle(fontSize: 15.0, color: Colors.grey),
              'Welcome back',
            ),
            Text(
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              'Royce Akhabhoa',
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        toolbarHeight: 100.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    "Recent study sets",
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      'See all',
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (final course in courses)
                      SizedBox(width: 350, child: CourseCard(data: course)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
