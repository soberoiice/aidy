import 'package:flutter/material.dart';

class ScanHistoryWidget extends StatelessWidget {
  final Map<String, dynamic> data;
  const ScanHistoryWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      height: 120.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  data['title'],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),
            Text(data['description']),
          ],
        ),
      ),
    );
  }
}
