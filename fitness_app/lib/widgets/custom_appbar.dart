import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(150);
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xffB6F075), Color(0xffFFFFFF)])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/29267513/pexels-photo-29267513/free-photo-of-young-tourist-taking-photo-on-busy-city-street.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            ),
            trailing: SizedBox(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCj-ZQ6Ezbp6QlHXrMXsnz2KG-gc-ZR0FgRw&s'),
                  ),
                  CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          'https://w7.pngwing.com/pngs/738/496/png-transparent-bookmark-computer-icons-bookmark-angle-rectangle-logo-thumbnail.png')),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(children: [
              Container(
                height: screenHeight * 0.07, //40,
                width: screenWidth * 0.7, //225,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [Icon(Icons.search), Text('search..')],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://www.shutterstock.com/image-vector/calendar-icon-logo-isolated-sign-260nw-2095030036.jpg'),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
