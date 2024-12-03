import 'package:flutter/material.dart';
import 'package:hoteliq/pages/schedule_page.dart';
import 'package:hoteliq/pages/schedule_page.dart';

class MyhotelPage extends StatefulWidget {
  final String formattedDate;
  const MyhotelPage({super.key, required this.formattedDate});

  @override
  State<MyhotelPage> createState() => _MyhotelPageState();
}

class _MyhotelPageState extends State<MyhotelPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SchedulePage()),
                );
              },
              icon: Icon(Icons.arrow_back)),
          title: Text(
            'Schedule',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 350,
                    height: 250,
                    decoration: BoxDecoration(
                        // color: buttonColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: Image.asset(
                      'assets/hotelaston.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: -20,
                    left: 20,
                    right: 20,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.7),
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "The Aston Vill Hotel",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Icon(Icons.calendar_month),
                  Text(widget.formattedDate),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Icon(Icons.pin_drop),
                  Text("Wilora NT 0872, Australia"),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Icon(Icons.home),
                  Text("R 5.4.3"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
