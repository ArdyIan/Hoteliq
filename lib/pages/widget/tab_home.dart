import 'package:flutter/material.dart';

class tab_Bar extends StatelessWidget {
  const tab_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Near Location",
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
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  width: 500,
                  child: Image.asset(
                    'assets/hotelaston.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "The Aston Vill Hotel",
                          style: TextStyle(
                              // color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.star_rounded,
                          color: Colors.orange,
                          size: 25,
                        ),
                        SizedBox(width: 7),
                        Text(
                          "5.0",
                          style: TextStyle(
                              // color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Alice Springs NT 0870, Australia",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  // fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$200.7",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "/night",
                  style: TextStyle(
                      // color: Colors.grey,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                ),
              ],
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
                  "Popular Hotel",
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
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

                            SizedBox(
                              width: 10,
                            ),
                            // Ikon bintang dan rating di sebelah kanan
                            Row(
                              children: [
                                Icon(
                                  Icons.star_rounded,
                                  color: Colors.orange,
                                  size: 20,
                                ),
                                SizedBox(
                                    width:
                                        7), // Jarak kecil antara ikon dan teks
                                Text(
                                  "5.0",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "Wilora NT 0872, Australia",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
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
                              fontSize: 15, fontWeight: FontWeight.normal),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
