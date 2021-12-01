import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
//import 'package:googler_maps_in_flutter/view/rider_page.dart';
import 'package:my_ride/src/view/rider_page.dart';

class FindingRide extends StatelessWidget {
  const FindingRide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/map2.png"), fit: BoxFit.cover),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back(result: "ok");
                    },
                    child: const CircleAvatar(
                      backgroundColor: Color(0xfffe8550),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: Text(
                      "Finding Your Ride",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 175,
            left: 18,
            child: SizedBox(
              height: size.height * .6,
              width: size.width * .9,
              child: Image.asset("images/Vector 22.png"),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: size.height * .1,
                child: InkWell(
                  onTap: () {
                    Get.to(const Rider());
                  },
                  child: Column(
                    children: const [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(0xffee4646),
                        child: Icon(
                          FontAwesomeIcons.times,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Cancel",
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
