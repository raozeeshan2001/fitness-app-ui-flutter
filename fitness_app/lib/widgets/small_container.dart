import 'package:flutter/material.dart';

class SmallContainer extends StatefulWidget {
  Color maincolor;
  Color circlecolor;
  String assetimagepath;
  SmallContainer(
      {super.key,
      required this.maincolor,
      required this.circlecolor,
      required this.assetimagepath});

  @override
  State<SmallContainer> createState() => _SmallContainerState();
}

class _SmallContainerState extends State<SmallContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: widget.maincolor),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    radius: 15,
                    backgroundColor: widget.circlecolor,
                    child: Image.asset(widget.assetimagepath)),
                Icon(
                  Icons.more_vert,
                  color: Colors.grey[800],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  '1200',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'kcal',
                  style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
