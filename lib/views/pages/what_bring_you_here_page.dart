import 'package:flutter/material.dart';

class WhatBringYouHerePage extends StatefulWidget {
  const WhatBringYouHerePage({super.key});

  @override
  State<WhatBringYouHerePage> createState() => _WhatBringYouHerePageState();
}

class _WhatBringYouHerePageState extends State<WhatBringYouHerePage> {
  String? selectedGoal;

  final List<String> goals = [
    "Improve my grades",
    "Prepare for exams",
    "Learn new subjects",
    "Supplement my studies",
    "Get organized for the semester",
    "Other",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                'What brings you here ?',
              ),
              Text(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
                'Choose the reason that best describes why you are here',
              ),
            ],
          ),
          Container(
            height: 400.0,
            child: ListView.builder(
              itemCount: goals.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: RadioListTile<String>(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    tileColor: selectedGoal == goals[index]
                        ? Colors.blue.shade50
                        : Colors.white,
                    title: Text(goals[index]),
                    value: goals[index],
                    groupValue: selectedGoal,
                    onChanged: (value) {
                      setState(() {
                        selectedGoal = value;
                      });
                    },
                    activeColor: Colors.blue,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
