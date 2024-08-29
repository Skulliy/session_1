import 'package:flutter/material.dart';
import 'package:action_slider/action_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: screen_width * 0.3),
                child: const Text(
                  "Hello, Instructor.",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(right: screen_width * 0.05),
                  child: const Text("We hope you have a great day."))
            ],
          ),
          backgroundColor: const Color(0xFFF5F7F9),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
              ),
            )
          ],
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(90),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: SearchBar(
                  leading: Icon(Icons.search),
                  hintText: "Search for a soundtrack",
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                ),
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: screen_width * 0.40,
                          height: screen_height * 0.20,
                          decoration: const ShapeDecoration(
                              color: Color(0xFF141617),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(
                                    screen_width * 0.4 * 0.15,
                                    screen_height * 0.20 * 0.1,
                                    1,
                                    0),
                                child: const Text(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                  ),
                                  "Emotional Balance",
                                ),
                              ),
                              const Spacer(
                                flex: 6,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFF2E3335),
                                ),
                                height: 40,
                                width: 130,
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "15m",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFD9D9D9),
                                        child: Icon(
                                          Icons.play_arrow,
                                          color: Color(0xFF2E3335),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const Spacer(
                                flex: 4,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: screen_width * 0.40,
                          height: screen_height * 0.20,
                          decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              color: Color(0xFFF1F8EC)),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(
                                    screen_width * 0.4 * 0.15,
                                    screen_height * 0.20 * 0.1,
                                    1,
                                    0),
                                child: const Text(
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 26,
                                  ),
                                  "Quiet Tranquility",
                                ),
                              ),
                              const Spacer(),
                              Container(
                                decoration: ShapeDecoration(
                                    color: const Color(0xFFBFCBB7),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                width: 130,
                                height: 40,
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "5m",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Color(0xFF141617),
                                      child: Icon(
                                        color: Color(0xFFBFCBB7),
                                        Icons.play_arrow,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        )
                      ]),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      Text(
                        'Our top picks for you 🔥',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: ShapeDecoration(
                      color: const Color(0xFFE9FFD9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        child: Container(
                            height: 100,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Color(0xFF4F5C45),
                              border: Border.all(),
                            )),
                      ),
                      Spacer(),
                      Container(
                        width: screen_width * 0.8,
                        height: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ambient Forest",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF4F5C45),
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF4F5C45),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      "5m",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF4F5C45),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  child: Center(
                                    child: Text(
                                      "Morning",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Spacer(
                                  flex: 12,
                                ),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Color(0xFF4F5C45),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
