import 'package:flutter/material.dart';
import 'left_column.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          // Left column
          LeftColumn(),
          // Main content
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Center(
                child: Text(
                  'Calendar Page',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}