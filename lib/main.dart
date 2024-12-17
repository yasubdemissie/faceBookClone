import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _activeMenuButton = 0;
  List<String> urls = [
    "https://thumbs.dreamstime.com/b/portrait-handsome-smiling-young-man-folded-arms-smiling-joyful-cheerful-men-crossed-hands-isolated-studio-shot-172869765.jpg",
    "https://static.vecteezy.com/system/resources/thumbnails/030/798/365/small_2x/beautiful-asian-girl-wearing-over-size-hoodie-in-casual-style-ai-generative-photo.jpg",
    "https://images.unsplash.com/photo-1508002366005-75a695ee2d17?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aGFwcHklMjB3b21hbnxlbnwwfHwwfHx8MA%3D%3D",
    "https://thumbs.dreamstime.com/b/man-tuxedo-handsome-caucasian-wearing-poses-next-to-grey-corrugated-metal-wall-39592554.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: ,
        // ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(11.0),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      "faceBook",
                      style: TextStyle(
                        color: Color.fromARGB(255, 38, 157, 255),
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.facebook_sharp,
                        size: 34, color: Color.fromARGB(255, 0, 140, 255)),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _activeMenuButton = 0;
                          });
                        },
                        color: _activeMenuButton == 0
                            ? Colors.blue[400]
                            : Colors.black,
                        icon: const Icon(Icons.home)),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _activeMenuButton = 1;
                          });
                        },
                        color: _activeMenuButton == 1
                            ? Colors.blue[400]
                            : Colors.black,
                        icon: const Icon(Icons.group)),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _activeMenuButton = 2;
                          });
                        },
                        color: _activeMenuButton == 2
                            ? Colors.blue[400]
                            : Colors.black,
                        icon: const Icon(Icons.person)),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _activeMenuButton = 3;
                            print(_activeMenuButton);
                          });
                        },
                        color: _activeMenuButton == 3
                            ? Colors.blue[400]
                            : Colors.black,
                        icon: const Icon(Icons.video_call_sharp)),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _activeMenuButton = 4;
                          });
                        },
                        color: _activeMenuButton == 4
                            ? Colors.blue[400]
                            : Colors.black,
                        icon: const Icon(Icons.notifications)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://yihun-alemayehu.netlify.app/images/profile-11.jpg')),
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: 45,
                      height: 45,
                    ),
                    const SizedBox(width: 20),
                    const SizedBox(
                      height: 34,
                      width: 260,
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.photo_library_outlined,
                            color: Color.fromARGB(177, 158, 158, 158),
                          ),
                          fillColor: Color.fromARGB(9, 0, 0, 0),
                          filled: true,
                          hintText: "what is on your mind?",
                          hintStyle: TextStyle(
                              color: Color.fromARGB(125, 0, 0, 0),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontStyle: FontStyle.italic),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 34,
                      width: 34,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(63, 158, 158, 158),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                          color: Colors.black),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      SingleChildScrollView(
                        // scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ActionContainer(
                              icon: Icons.video_camera_front_sharp,
                              // iconColor: const Color.fromARGB(108, 17, 179, 41),
                              // bgColor: const Color.fromARGB(33, 17, 179, 41),
                              title: "Video",
                            ),
                            ActionContainer(
                              iconColor: const Color.fromARGB(255, 17, 179, 41),
                              bgColor: const Color.fromARGB(33, 17, 179, 41),
                              icon: Icons.group,
                              title: "Group",
                            ),
                            ActionContainer(
                              iconColor: const Color.fromARGB(255, 179, 17, 17),
                              bgColor: const Color.fromARGB(32, 179, 17, 17),
                              icon: Icons.room,
                              title: "Room",
                            ),
                            ActionContainer(
                              iconColor: const Color.fromARGB(255, 25, 17, 179),
                              bgColor: const Color.fromARGB(32, 17, 39, 179),
                              icon: Icons.movie_creation,
                              title: "Movie",
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            height: 159,
                            child: Row(
                              children: List.generate(
                                urls.length,
                                (index) {
                                  return Row(
                                    children: [
                                      StoryContainer(
                                        photoUrl: urls[index],
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StoryContainer extends StatelessWidget {
  final String photoUrl;

  bool owner;

  StoryContainer({super.key, required this.photoUrl, this.owner = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 140,
            width: 110,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(photoUrl)),
              color: Colors.black45,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Positioned(
            bottom: -9,
            right: 50,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 1,
                  color: Colors.white,
                ),
                color: const Color.fromARGB(255, 0, 134, 244),
              ),
              height: 20,
              width: 20,
              child: Center(
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 19,
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

class ActionContainer extends StatelessWidget {
  final IconData icon;
  Color? iconColor;
  Color? bgColor;
  final String title;
  ActionContainer({
    super.key,
    this.bgColor,
    this.iconColor,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 90,
      decoration: BoxDecoration(
        color: bgColor ?? const Color.fromARGB(33, 189, 170, 4),
        borderRadius: BorderRadius.circular(10),
      ),
      // color: const Color.fromARGB(89, 255, 235, 59),
      child: Row(
        children: [
          const SizedBox(width: 10),
          Icon(
            icon,
            color: iconColor ?? const Color.fromARGB(255, 255, 213, 0),
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
                color: iconColor ?? const Color.fromARGB(255, 255, 213, 0),
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
