import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:my_ride/src/view/finish_ride.dart';
import 'package:my_ride/src/view/show_Notifications.dart';

class GoingTo extends StatelessWidget {
  const GoingTo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/map2.png"), fit: BoxFit.fill),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Container(
                height: size.height * .1,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                //alignment: Alignment.center,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hey Zoro!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfffe8550),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Rider is about to reach in ",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "10 mins!",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xfffe8550),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          //padding:EdgeInsets.all(20)
                        ),
                        onPressed: () {
                          //Get.to(FinishRide());
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  dialogBackgroundColor: Colors.transparent,
                                ),
                                child: AlertDialog(
                                  //backgroundColor: Colors.red,
                                  contentPadding: EdgeInsets.zero,
                                  title: Center(
                                    child: Text(""),
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Hurrah(),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Text("Drop Here"),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff86817e),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          //padding:EdgeInsets.all(20)
                        ),
                        onPressed: () {
                          Get.to(FinishRide());
                          // showDialog(
                          //   context: context,
                          //   builder: (BuildContext context) {
                          //     return Theme(
                          //       data: Theme.of(context).copyWith(
                          //         dialogBackgroundColor: Colors.transparent,
                          //       ),
                          //       child: AlertDialog(
                          //         //backgroundColor: Colors.red,
                          //         contentPadding: EdgeInsets.zero,
                          //         title: Center(
                          //           child: Text("sdggdg"),
                          //         ),
                          //         content:
                          //             // Container(
                          //             //   height: 100,
                          //             //   width: 100,
                          //             //   color: Colors.red,
                          //             // ), //
                          //             Report(),
                          //       ),
                          //     );
                          //   },
                          // );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Change Route"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
