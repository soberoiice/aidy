import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnterAgeWidget extends StatefulWidget {
  const EnterAgeWidget({super.key});

  @override
  State<EnterAgeWidget> createState() => _EnterAgeWidgetState();
}

class _EnterAgeWidgetState extends State<EnterAgeWidget> {
  int selectedAge = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                'How Old Are You ?',
              ),
              Text(
                style: TextStyle(fontSize: 15.0),
                'This helps us tailor your study plan',
              ),
            ],
          ),
          SizedBox(
            height: 350,
            child: CupertinoPicker(
              scrollController: FixedExtentScrollController(
                initialItem: selectedAge - 1,
              ),
              itemExtent: 65,

              onSelectedItemChanged: (index) {
                setState(() {
                  selectedAge = index + 1;
                });
              },

              children: List.generate(100, (index) {
                final age = index + 1;
                final isSelected = age == selectedAge;

                return Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$age",
                        style: TextStyle(
                          fontSize: isSelected ? 52 : 32,
                          color: isSelected ? Colors.blue : Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      if (isSelected)
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text(
                            "years",
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
