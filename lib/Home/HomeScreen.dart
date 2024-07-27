import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/Home/Tab/SebhaScreen.dart';
import 'package:provider/provider.dart';

import '../Provider/My_provider.dart';
import 'Tab/AhadethScreen.dart';
import 'Tab/QuranSreen.dart';
import 'Tab/RadioScreen.dart';
import 'Tab/SettingScreen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(pro.appTheme == ThemeMode.dark
            ? "assets/images/dark_bg.png"
            : "assets/images/bg3.png"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "islami".tr(),
              style: GoogleFonts.elMessiri(
                  fontSize: 30, fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(
                    AssetImage('assets/images/quran.png'),
                    size: 30,
                  ),
                  label: "Quran"),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage('assets/images/radio.png'),
                      size: 30),
                  label: "ٌRadio"),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage('assets/images/sebha.png'),
                      size: 30),
                  label: "Sebha"),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage('assets/images/Ahadeth.png'),
                      size: 30),
                  label: "Ahadeth"),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  label: "Setting"),
            ],
          ),
          body: body[selectedIndex],
        )
      ],
    );
  }

  List<Widget> body = [
    QuranScreen(),
    RadioScreen(),
    Sebhascreen(),
    AhadethScreen(),
    SettingScreen(),
  ];
}
