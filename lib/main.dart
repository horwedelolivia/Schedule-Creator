import 'package:flutter/material.dart';
import 'package:schedule_creator/calender.dart'; // Import the calendar.dart file
import 'package:schedule_creator/styles/styles.dart';
import 'package:schedule_creator/left_column.dart'; // Import the LeftColumn widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schedule Creator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
        ).copyWith(
          background: const Color.fromRGBO(239, 239, 239, 1.0),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
          titleTextStyle: AppStyles.headingText,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
      routes: {
        '/calendar':(context) => const CalendarPage(),
        '/main' : (context) => const MyHomePage(title: 'Home Page'),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
              padding: EdgeInsets.only(top: 24.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to your personal schedule creator!',
                      style: AppStyles.headingText,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}