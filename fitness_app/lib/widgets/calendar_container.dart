import 'package:fitness_app/widgets/small_container.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarContainer extends StatelessWidget {
  const CalendarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    List<DateTime> dates = List.generate(7, (index) {
      return DateTime.now().add(Duration(days: index));
    });
    return SizedBox(
      height: 280,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          margin: EdgeInsets.zero, // EdgeInsets.all(15),
          color: Color(0xffFFFFFF),
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 120,
                child: ListView.builder(
                    itemCount: dates.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      DateTime date = dates[index];
                      return Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                        child: Container(
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(20)),
                          // height: 100,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  DateFormat.E().format(date),
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                CircleAvatar(
                                  radius: 18,
                                  backgroundColor: Colors.white,
                                  child: Text(
                                    DateFormat.d().format(date),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ]),
                        ),
                      );
                    }),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SmallContainer(
                        maincolor: Colors.yellow.shade100,
                        circlecolor: Color(0xffFFEC8B),
                        assetimagepath: 'Assets/fitness.png'),
                    SmallContainer(
                        maincolor: Colors.purple.shade50,
                        circlecolor: Color(0xffDAB9F2),
                        assetimagepath: 'Assets/clock.png'),
                    SmallContainer(
                        maincolor: Colors.blue.shade50,
                        circlecolor: Color(0xffB5E1FA),
                        assetimagepath: 'Assets/clock.png'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
