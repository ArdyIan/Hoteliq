import 'package:flutter/material.dart';
import 'package:hoteliq/pages/widget/tab_home.dart';
import 'package:hoteliq/pages/widget/tabbar.dart';

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
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: 1000,
                    child: Tabbar(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 40,
        color: Colors.grey.shade100,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.translate(
              offset: Offset(0, -20),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home_filled,
                    size: 25,
                    color: Colors.grey.shade400,
                  )),
            ),
            Transform.translate(
              offset: Offset(0, -20),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.calendar_month,
                    size: 25,
                    color: Colors.grey.shade400,
                  )),
            ),
            Transform.translate(
              offset: Offset(0, -20),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.save_rounded,
                    size: 25,
                    color: Colors.grey.shade400,
                  )),
            ),
            Transform.translate(
              offset: Offset(0, -20),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    size: 25,
                    color: Colors.grey.shade400,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
