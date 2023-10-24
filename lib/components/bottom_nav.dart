import 'package:finance_app/components/Adding_Screen.dart';
import 'package:finance_app/components/home_screen.dart';
import 'package:finance_app/components/profile.dart';
import 'package:finance_app/constants/colors.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index_color = 0;
  List<Widget> Screens = [HomeScreen(), ProfileView(),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[index_color],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Add_Screen() ));
        },
        child: Icon(Icons.add),
        backgroundColor: greenColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 7, bottom: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 0;
                  });
                },
                child: Icon(
                  Icons.home,
                  color: index_color == 0 ? greenColor : greyColor,
                  size: 35,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index_color = 1;
                  });
                },
                child: Icon(
                  Icons.person,
                  color: index_color == 1 ? greenColor : greyColor,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
