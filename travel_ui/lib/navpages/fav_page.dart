import 'package:flutter/material.dart';
import 'package:travel_ui/app_text.dart';
import 'package:travel_ui/navpages/reusable_click.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  var filled = 4;
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  height: 380,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/image_1.jpg'),
                        fit: BoxFit.cover),
                  ),
                )),
            Positioned(
                top: 50,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white70,
                    ),
                    Text(
                      ":",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                )),
            Positioned(
              top: 330,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 600,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(size: 30, text: "Yoesomite"),
                            AppText(
                              size: 30,
                              text: "\$250",
                              color: Colors.lightBlue,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(
                              width: 5,
                            ),
                            AppText(
                              size: 20,
                              text: "USA California",
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: index < filled
                                        ? Colors.yellow
                                        : Colors.black,
                                  )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        AppText(
                          size: 25,
                          text: "Pepole",
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        AppText(
                          size: 18,
                          text: "Number of pepole in your group",
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => InkWell(
                                    onTap: () {
                                      setState(() {
                                        selected = index;
                                      });
                                    },
                                    child: ResubleClickButton(
                                      isIcon: false,
                                      size: 50,
                                      backgroundColor: selected == index
                                          ? Colors.black
                                          : Colors.grey,
                                      icon: Icons.favorite,
                                      color: selected == index
                                          ? Colors.white
                                          : Colors.black,
                                      text: (index + 1).toString(),
                                    ),
                                  )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        AppText(
                          size: 25,
                          text: "Discription",
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        AppText(
                            color: Colors.grey,
                            size: 14,
                            text:
                                "Yosemite National Park, located in eastern California, is one of the most visited national parks in the United States"),
                        SizedBox(
                          height: 15,
                        ),
                        Positioned(
                          bottom: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ResubleClickButton(
                                size: 50,
                                backgroundColor: Colors.grey,
                                color: Colors.black,
                                isIcon: true,
                                icon: Icons.favorite_outline,
                              )
                            ],
                          ),
                        )
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
