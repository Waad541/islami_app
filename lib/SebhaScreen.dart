import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sebhascreen extends StatefulWidget {
  static const String routeName='SebhaScreen';
  const Sebhascreen({super.key});

  @override
  State<Sebhascreen> createState() => _SebhascreenState();
}

class _SebhascreenState extends State<Sebhascreen> {
  int count = 0;
  int index = 0;
  double angle = 0;
  List<String> azkar = [
    'سبحان الله',
    'لا اله الا الله',
    'الله اكبر',
    'الحمد لله'
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/bg3.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Islami',
              style: GoogleFonts.elMessiri(
                  fontSize: 30, fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 55, left: 200),
                      child: Image.asset(
                        'assets/images/head of seb7a.png',
                        height: 105,
                      )),
                  GestureDetector(
                    onTap: onClick,
                    child: Transform.rotate(
                      angle: angle,
                      child: Padding(
                          padding: EdgeInsets.all(100),
                          child: Image.asset(
                            'assets/images/body of seb7a.png',
                            height: 234,
                          )),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'عدد التسبيحات',
                    style: GoogleFonts.elMessiri(
                        fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffB7935F),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        '$count',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffB7935F),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        azkar[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  onClick() {
    setState(() {});
    if (count == 33) {
      index++;
      count = 0;
      if (index >= azkar.length) {
        index = 0;
      }
    }
    angle += 360 / 4;
    count++;
  }
}