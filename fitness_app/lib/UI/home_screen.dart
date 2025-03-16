import 'package:fitness_app/widgets/calendar_container.dart';
import 'package:fitness_app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(),
        body: Column(
          children: [CalendarContainer()],
        ),
      ),
    );
  }
}
