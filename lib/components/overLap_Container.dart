import 'package:flutter/material.dart';
import 'package:finance_app/constants/colors.dart';

class OverLapConatiner extends StatefulWidget {
  const OverLapConatiner({super.key});

  @override
  State<OverLapConatiner> createState() => _OverLapConatinerState();
}

class _OverLapConatinerState extends State<OverLapConatiner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 320,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: whiteColor,
            offset: Offset(2 , 2),
            blurRadius: 10,
            spreadRadius: 4,
          )
        ],
          borderRadius: BorderRadius.circular(12),
          color: Color.fromARGB(255, 10, 116, 107)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Balance",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.more_horiz,
                  color: whiteColor,
                )
              ],
            ),
          ),
          SizedBox(height: 1),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  "\$ 2750",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xff148F85),
                      radius: 13,
                      child: Icon(
                        Icons.arrow_downward,
                        color: whiteColor,
                      ),
                    ),
                    SizedBox(width: 7),
                    Text(
                      "Income",
                      style: TextStyle(
                          color: lightWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xff148F85),
                      radius: 13,
                      child: Icon(
                        Icons.arrow_upward,
                        color: whiteColor,
                      ),
                    ),
                    SizedBox(width: 7),
                    Text(
                      "Expenses",
                      style: TextStyle(
                          color: lightWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$ 220",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "\$ 220",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
