import 'package:flutter/material.dart';

import 'package:hp_scroll_animation/hp_scroll_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HPScrollAnimation(
        bottomWidget: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(
                  Icons.home,
                )),
            BottomNavigationBarItem(
                label: "Location", icon: Icon(Icons.location_city)),
          ],
        ),
        child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.all(0),
          itemBuilder: (_, index) => Text("hi $index"),
          itemCount: 500,
        ),
      ),
    );
  }
}
