import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'styles/styles.dart';

class LeftColumn extends StatelessWidget {
  const LeftColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      color: const Color.fromRGBO(214, 204, 194, 1.0),
      width: 200,
      child: Column(
        children: [
          ListTile(
            leading: const Icon(FontAwesomeIcons.bookmark),
            title: const Text(
              'Schedule.it',
              style: AppStyles.listHeading,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/main'); // Navigate to Main
            },
          ),
          const SizedBox(height: 16), // Add some space between list items
          ListTile(
            leading: const Icon(FontAwesomeIcons.calendarDays),
            title: const Text(
              'Calendar',
              style: AppStyles.listText,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/calendar'); // Navigate to CalendarPage
            },
          ),
          ListTile(
            title: const Text('Page 2'),
            onTap: () {
              // Navigate to Page 2
            },
          ),
        ],
      ),
    );
  }
}