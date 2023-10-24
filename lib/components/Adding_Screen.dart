import 'package:finance_app/constants/colors.dart';
import 'package:flutter/material.dart';

class Add_Screen extends StatefulWidget {
  const Add_Screen({super.key});

  @override
  State<Add_Screen> createState() => _Add_ScreenState();
}

class _Add_ScreenState extends State<Add_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: Stack(
            alignment: Alignment.center,
        children: [
          background_container(context),
          Positioned(
            top: 120,
            child: overLapp_container(),
            
          )
        ],
      )),
    );
  }

  Container overLapp_container() {
    return Container(
            height: 550,
            width: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2,
                      color: grey2Color,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
  }

  Column background_container(BuildContext context) {
    return Column(
          children: [
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                color: greenColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: whiteColor,
                          ),
                        ),
                        Text(
                          "Adding",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: whiteColor,
                          ),
                        ),
                        Icon(
                          Icons.attach_file_outlined,
                          color: whiteColor,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        );
  }
}
