import 'package:flutter/material.dart';
import 'package:hoteliq/views/schedule_page.dart';

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
                Navigator.pop(
                    context,
                    widget
                        .formattedDate); // Kirim data kembali ke halaman sebelumnya
              },
              icon: Icon(Icons.arrow_back)),
          title: Text(
            'Hotel',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
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
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/hotel_image1.png',
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/hotel_image2.png',
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/hotel_image3.png',
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Warna garis border
                    width: 1.5, // Ketebalan garis border
                  ),
                  borderRadius: BorderRadius.circular(5), // Radius sudut border
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_month),
                      SizedBox(width: 10),
                      Text(widget.formattedDate),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Warna garis border
                    width: 1.5, // Ketebalan garis border
                  ),
                  borderRadius: BorderRadius.circular(5), // Radius sudut border
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Icon(Icons.access_time_rounded),
                      SizedBox(width: 10),
                      Text("13.20 WIB"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Warna garis border
                    width: 1.5, // Ketebalan garis border
                  ),
                  borderRadius: BorderRadius.circular(5), // Radius sudut border
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Icon(Icons.home),
                      SizedBox(width: 10),
                      Text("R 5.4.3"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
