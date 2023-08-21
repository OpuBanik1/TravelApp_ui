import 'package:flutter/material.dart';
import 'package:travel_ui/app_text.dart';
import 'package:travel_ui/reuseble_button.dart';

class Welcome_page extends StatefulWidget {
  const Welcome_page({super.key});

  @override
  State<Welcome_page> createState() => _Welcome_pageState();
}

class _Welcome_pageState extends State<Welcome_page> {
  List img = [
    "image_1.jpg",
    "image_2.jpg",
    "image_3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: img.length,
          itemBuilder: (_, index) {
            return Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/' + img[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(size: 30, text: "Trips"),
                        AppText(
                          size: 30,
                          text: "Mountain",
                          color: Colors.grey,
                        ),
                        Container(
                          width: 250,
                          child: AppText(
                            size: 15,
                            text:
                                "Mountain hikes gives you an incridble freedom along with endurence test",
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Button(
                          width: 120,
                        )
                      ],
                    ),
                    Column(
                      children: List.generate(
                          3,
                          (indexdots) => Container(
                                width: 8,
                                height: index == indexdots ? 25 : 8,
                                decoration: BoxDecoration(
                                    color: index == indexdots
                                        ? Colors.black
                                        : Colors.grey.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(10)),
                              )),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
