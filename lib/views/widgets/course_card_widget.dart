import 'package:flutter/material.dart';

Color getColor(String color) {
  switch (color) {
    case 'orange':
      return Colors.orange;
    case 'yellow':
      return Colors.yellow;
    case 'blue':
      return Colors.blue;
    case 'purple':
      return Colors.purple;
    case 'green':
      return Colors.green;
    default:
      return Colors.grey;
  }
}

class CourseCard extends StatelessWidget {
  final Map<String, dynamic> data;
  const CourseCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final double percent = data['percent'] / 100;
    final Color courseColor = getColor(data['color']);

    return Container(
      height: 180,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // Left color indicator
          Container(
            width: 6,
            height: 180,
            decoration: BoxDecoration(
              color: courseColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title + Progress
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          data['title'],
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),

                      SizedBox(
                        width: 40,
                        height: 40,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CircularProgressIndicator(
                              value: percent,
                              strokeWidth: 4,
                              backgroundColor: Colors.grey.shade200,
                              valueColor: AlwaysStoppedAnimation(courseColor),
                            ),
                            Text(
                              '${data['percent']}%',
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  // Subtitle (static for now)
                  Text(
                    '45 Flashcards • 12 explanations • 20 exercise',
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
                  ),

                  const Divider(height: 24),

                  // Bottom row
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: const Text(
                          'By you',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.lock_outline, size: 18),
                      const SizedBox(width: 12),
                      const Icon(Icons.more_vert, size: 18),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
