import 'package:bottom_provider/screens/home_page/view/homepage_ui.dart';
import 'package:bottom_provider/screens/profile_page/view/profile_ui.dart';
import 'package:bottom_provider/screens/video_page/view/videopage_ui.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/bottm_pro.dart';

class boottm extends StatefulWidget {
  const boottm({Key? key}) : super(key: key);

  @override
  State<boottm> createState() => _boottmState();
}

class _boottmState extends State<boottm> {
  bootmprovider? bootprotrue;
  bootmprovider? bootprofalse;
  List screens = [home(),videoui(),ProfilUI()];
  @override
  Widget build(BuildContext context) {
    bootprotrue = Provider.of(context,listen: true);
    bootprofalse = Provider.of(context,listen: false);
    return SafeArea(
        child: Scaffold(
          body: screens[bootprotrue!.i],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: bootprotrue!.i,
            onTap: (value) {
              bootprofalse!.selctindex(value);
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.photo),label: "Photo"),
              BottomNavigationBarItem(icon: Icon(Icons.play_arrow),label: "Video"),
              BottomNavigationBarItem(icon: Icon(Icons.play_arrow),label: "Profile"),
            ],
          ),
        ),
    );
  }
}
