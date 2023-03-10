import 'package:bottom_provider/screens/bottm_screen/provider/bottm_pro.dart';
import 'package:bottom_provider/screens/bottm_screen/view/screen_bottm.dart';
import 'package:bottom_provider/screens/home_page/provider/homepage_provider.dart';
import 'package:bottom_provider/screens/home_page/view/FinalUI.dart';
import 'package:bottom_provider/screens/home_page/view/homepage_ui.dart';
import 'package:bottom_provider/screens/profile_page/view/pick_img.dart';
import 'package:bottom_provider/screens/profile_page/view/profile_ui.dart';
import 'package:bottom_provider/screens/video_page/provider/video_provider.dart';
import 'package:bottom_provider/screens/video_page/view/videopage_ui.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Providerhome(),
        ),
        ChangeNotifierProvider(
          create: (context) => Providertwo(),
        ),
        ChangeNotifierProvider(
          create: (context) => bootmprovider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: 'profile',
        routes: {
          '/': (context) => boottm(),
          'secnod': (context) => home(),
          'third': (context) => videoui(),
          'final': (context) => FinalUI(),
          'profile': (context) => ProfilUI(),
          'pickimg': (context) => pick(),
        },
      ),
    ),
  );
}
