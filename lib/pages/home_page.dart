// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mono_icons/mono_icons.dart';
import 'package:my_app/main.dart';
import 'package:my_app/pages/all_page.dart';
import 'package:my_app/pages/new_reminder.dart';
import 'package:my_app/pages/schedule_page.dart';
import 'package:my_app/pages/today_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TodayPage(),
                          ));
                    },
                    child: Container(
                      width: 180,
                      height: 170,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 22, 22, 22),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Icon(
                                Iconsax.calendar,
                                size: 50,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Today',
                              style: TextStyle(
                                  fontSize: 27,
                                  color: Colors.white,
                                  fontFamily: 'RobotoSlab-Regular'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '0 tasks left',
                              style:
                                  TextStyle(fontSize: 27, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewReminder(),
                          ));
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 110.0),
                            child: Icon(Iconsax.add,
                                color: Colors.white, size: 50),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Reminders',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SchedulePage(),
                                    ));
                              },
                              child: Container(
                                width: 140,
                                height: 130,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 221, 189, 248),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Iconsax.calendar5,
                                          size: 30,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Scheduled',
                                        style: TextStyle(fontSize: 19),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '0',
                                        style: TextStyle(fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AllPage(),
                                    ));
                              },
                              child: Container(
                                width: 140,
                                height: 130,
                                decoration: BoxDecoration(
                                    color: Color(0xFFEDE9E9),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Iconsax.task_square,
                                          size: 30,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'All',
                                        style: TextStyle(fontSize: 19),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '0',
                                        style: TextStyle(fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'List',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color(0xFFEDE9E9),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        child: Row(
                                      children: [
                                        Text(
                                          'Home',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ],
                                    )),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            '0',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          // Icon(Iconsax.arrow_square_right3)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
