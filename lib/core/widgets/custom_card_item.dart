
import 'package:flutter/material.dart';


class CustomCardItem extends StatelessWidget {
  const CustomCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon and title
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey.shade700,
                  size: 24,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'شقق جيننة الماسي',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),

            // Subtitle
            Text(
              'وكالة تلية',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),
            Divider(height: 24, thickness: 1),

            // Name and icon
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.brown,
                  size: 24,
                ),
                SizedBox(width: 8),
                Text(
                  'أحمد سعد محمد خالد',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Last update time
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.access_time,
                  color: Colors.grey.shade600,
                  size: 18,
                ),
                SizedBox(width: 4),
                Text(
                  'آخر تدقيق اليوم 12:30',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
