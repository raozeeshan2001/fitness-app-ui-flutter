import 'package:fitness_app/widgets/calendar_container.dart';
import 'package:fitness_app/widgets/custom_appbar.dart';
import 'package:fitness_app/widgets/image_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;
  void onitemtapped(index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(),
        body: Column(
          children: [
            CalendarContainer(),
            ImageContainer(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              onitemtapped(index);
            },
            currentIndex: selectedindex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.work_outline), label: 'Workout'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.people_outline_outlined,
                  ),
                  label: 'People'),
            ]),
      ),
    );
  }
}
