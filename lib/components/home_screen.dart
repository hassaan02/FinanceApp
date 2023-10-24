import 'package:finance_app/components/bottom_nav.dart';
import 'package:finance_app/components/overLap_Container.dart';
import 'package:finance_app/constants/colors.dart';
import 'package:finance_app/model/list_Info.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 350,
              child: _head(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transaction History",
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 19,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: greyColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
              leading: CircleAvatar(
                //  backgroundImage: AssetImage("lib/Assets/Images/${geter()[index].image!}")
              ),
              title: Text(
                geter()[index].name!,
                style: TextStyle(
                    color: blackColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                geter()[index].time!,
                style: TextStyle(color: greyColor, fontWeight: FontWeight.w500),
              ),
              trailing: Text(
                geter()[index].fee!,
                style: TextStyle(
                    color: geter()[index].buy! ? redColor : green2Color ,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    ),
              ),
            );
          },
          childCount: geter().length,
          ))
        ],
      ),
      ),
    );
  }

  Widget _head() {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                  color: greenColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 310,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Container(
                        color: Color(0xff148F85),
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.notification_add,
                          color: whiteColor,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "WELCOME,",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Color.fromARGB(255, 236, 236, 236),
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Hassaan Mazhar",
                          style: TextStyle(
                              color: whiteColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Positioned(
            top: 150,
            left: 35,
            right: 35,
            child: OverLapConatiner() // calling a class
            )
      ],
    );
  }
}
