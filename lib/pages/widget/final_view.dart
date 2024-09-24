import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:hoteliq/pages/widget/data.dart';
import 'package:hoteliq/pages/widget/image_viewer_helper.dart';

class FinalView extends StatefulWidget {
  const FinalView({super.key});

  @override
  State<FinalView> createState() => _FinalViewState();
}

class _FinalViewState extends State<FinalView>
    with SingleTickerProviderStateMixin {
  late CarouselSliderController innerCarouselController;
  int innerCurrentPage = 0;

  @override
  void initState() {
    innerCarouselController = CarouselSliderController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          children: [
            ///iiner style indicator slid
            Column(
              children: [
                ///slider style
                // Padding(
                //   padding: EdgeInsets.all(15),
                //   child: Text(
                //     "Inner Indicator Style",
                //     style: TextStyle(
                //       fontSize: 20,
                //       fontWeight: FontWeight.w500,
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: height * .25,
                  width: width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ///slider
                      Positioned.fill(
                        child: CarouselSlider(
                          carouselController: innerCarouselController,
                          items: AppData.innerStyleImages.map((imagePath) {
                            return Builder(builder: (BuildContext context) {
                              // return Image.asset(
                              //   imagePath,
                              //   // fit: BoxFit.cover,
                              // );

                              ///custom image viewer widget
                              return ImageViewerHelper.show(
                                context: context,
                                url: imagePath,
                              );
                            });
                          }).toList(),
                          options: CarouselOptions(
                              enlargeCenterPage: true,
                              autoPlay: true,
                              enableInfiniteScroll: true,
                              viewportFraction: 0.8,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  innerCurrentPage = index;
                                });
                              }),
                        ),
                      ),

                      ///indicator
                      Positioned(
                        bottom: height * .02,
                        child: Row(
                          children: List.generate(
                            AppData.innerStyleImages.length,
                            (index) {
                              bool isSelected = innerCurrentPage == index;
                              return GestureDetector(
                                onTap: () {
                                  innerCarouselController.animateToPage(index);
                                },
                                child: AnimatedContainer(
                                  width: isSelected ? 55 : 17,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: isSelected ? 6 : 3),
                                  height: 5,
                                  decoration: BoxDecoration(
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(40)),
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.ease,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
