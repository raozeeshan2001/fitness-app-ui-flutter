import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: 120,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('Assets/w.jpg'), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15)),
            )),
      ),
    );
  }
}
