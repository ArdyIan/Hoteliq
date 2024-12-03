import 'package:flutter/material.dart';
import 'package:hoteliq/pages/home_page.dart';
import 'package:hoteliq/pages/myHotel_page.dart';
import 'package:intl/intl.dart'; // Pastikan import intl sudah benar
import 'package:table_calendar/table_calendar.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  DateTime today = DateTime.now();
  DateTime focusedDay = DateTime.now();

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      today = selectedDay;
      this.focusedDay = focusedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Pastikan format date di sini sesuai dengan yang diharapkan
    String formattedDate = DateFormat('yyyy-MM-dd').format(today);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              icon: Icon(Icons.arrow_back)),
          title: Text(
            'Schedule',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        ),
        body: Column(
          children: [
            Text("Selected day = $formattedDate"),
            Container(
              child: TableCalendar(
                locale: "en_US",
                rowHeight: 43,
                headerStyle: HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                availableGestures: AvailableGestures.all,
                focusedDay: focusedDay,
                selectedDayPredicate: (day) {
                  return isSameDay(today, day);
                },
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                onDaySelected: _onDaySelected,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Schedule",
                    style: TextStyle(
                        // color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyhotelPage(formattedDate: formattedDate,)));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 85,
                          height: 85,
                          decoration: BoxDecoration(
                              // color: buttonColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Image.asset(
                            'assets/hotelaston.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //disininiiiiiiii
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment
                                  //     .spaceBetween, // Mendorong elemen ke kiri dan kanan
                                  children: [
                                    // Nama hotel di sebelah kiri

                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        "The Aston Vill Hotel",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  size: 15,
                                ),
                                Text("$formattedDate"),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$165.3",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "/night",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.forward)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                            // color: buttonColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.asset(
                          'assets/hotelaston.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              //disininiiiiiiii
                              Row(
                                // mainAxisAlignment: MainAxisAlignment
                                //     .spaceBetween, // Mendorong elemen ke kiri dan kanan
                                children: [
                                  // Nama hotel di sebelah kiri

                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Text(
                                      "The Aston Vill Hotel",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                size: 15,
                              ),
                              Text("$formattedDate"),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "\$165.3",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "/night",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.forward)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
