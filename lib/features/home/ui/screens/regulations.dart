import 'package:flutter/material.dart';

class RegulationsScreen extends StatelessWidget {
  const RegulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Regulations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Text(
              'Regulation 1: Follow the company policies.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Regulation 2: Maintain a professional attitude.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Regulation 3: Respect your colleagues.',
              style: TextStyle(fontSize: 18),
            ),
            // Add more regulations as needed
          ],
        ),
      ),
    );
  }
}
