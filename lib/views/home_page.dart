import 'package:flutter/material.dart';
import 'package:hoteliq/views/schedule_page.dart';
import 'package:hoteliq/views/scroll_hotel.dart';
import 'package:hoteliq/widgets/tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: colors,
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Text(
                  "Current location",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.pin_drop,
                            size: 30,
                            color: Colors.blue,
                          ),
                          Text(
                            "Wallace, Australia",
                            style: TextStyle(
                                // color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Icon(Icons.notifications)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
//memangggil tabbar
            Expanded(
              //child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 600,
                  child: Tabbar(),
                ),
              ),
              //  ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 40,
        color: Colors.grey.shade300,
        padding: EdgeInsets.only(bottom: 10),
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 20,
                color: Colors.grey.shade400,
              ),
            ),
            // Transform.translate(
            //   offset: Offset(0, -20),
            //   child: IconButton(
            //       onPressed: () {},
            //       icon: Icon(
            //         Icons.home_filled,
            //         size: 30,
            //         color: Colors.grey.shade400,
            //       )),
            // ),

            // Transform.translate(
            //   offset: Offset(0, -20),
            //   child:
            IconButton(
              onPressed: () {
                print("Icon Calendar Pressed");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SchedulePage()));
              },
              icon: Icon(
                Icons.calendar_month,
                size: 20,
                color: Colors.grey.shade400,
              ),
            ),

            // SizedBox(height: 20,),
            // ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScrollHotel()));
              },
              icon: Icon(
                Icons.alarm,
                size: 20,
                color: Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 20,
                color: Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
