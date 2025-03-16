import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarContainer extends StatelessWidget {
  const CalendarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    List<DateTime> dates = List.generate(5, (index) {
      return DateTime.now().add(Duration(days: index));
    });
    return SizedBox(
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.all(15),
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
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class CalendarContainer extends StatelessWidget {
//   const CalendarContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List<DateTime> dates = List.generate(7, (index) {
//       return DateTime.now().add(Duration(days: index));
//     });

//     return Card(
//       color: Colors.red,
//       margin: EdgeInsets.all(15),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//       child: Column(
//         mainAxisSize: MainAxisSize.min, // Prevent unnecessary expansion
//         children: [
//           // 🔹 Calendar List (Fixed Height)
//           SizedBox(
//             height: 70, // Only this part will take 70 height
//             child: ListView.builder(
//               itemCount: dates.length,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 DateTime date = dates[index];
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 5),
//                   child: Container(
//                     width: 50,
//                     decoration: BoxDecoration(
//                       color: Colors.blue,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           DateFormat.E().format(date),
//                           style: TextStyle(
//                               color: Colors.white, fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           DateFormat.d().format(date),
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),

//           // 🔹 Add More Content Below (This part will not affect calendar height)
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: Text(
//               "More content here...",
//               style: TextStyle(color: Colors.white, fontSize: 16),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
