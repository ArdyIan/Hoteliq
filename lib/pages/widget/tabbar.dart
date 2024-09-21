import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hoteliq/pages/widget/tab_home.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _CustomTabbarState();
}

class _CustomTabbarState extends State<Tabbar> {
  List<String> items = [
    "Hotel",
    "Homestay",
    "Apart",
  ];

  List<IconData> icons = [
    Icons.dangerous,
    Icons.tab,
    Icons.face,
    Icons.offline_bolt
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      // height: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 50,
            width: double.infinity,
//MAIN BODY CONTINER

            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                        // Visibility(
                        //     // visible: current == index,
                        //     child: Container(
                        //   width: 5,
                        //   height: 5,
                        //   decoration: BoxDecoration(
                        //       shape: BoxShape.circle,
                        //       color: Colors.deepPurpleAccent),
                        // ));
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                            color: current == index
                                ? Colors.white70
                                : Colors.white,
                            borderRadius: current == index
                                ? BorderRadius.circular(15)
                                : BorderRadius.circular(10),
                            border: current == index
                                ? Border.all(
                                    color: Colors.deepPurpleAccent, width: 2)
                                : null),
                        child: Center(
                          child: Text(
                            items[index],
                            style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: current == index
                                    ? Colors.black
                                    : Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            //
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
//kalo ada bottom yang overflowed coba otak atik height ini
              height: 1000,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (current == 0) tab_Bar(),
                  // if (current == 1) tab_Bar2(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
