import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/AppColor.dart';

class Sebhascreen extends StatefulWidget {
  static const String routeName = 'SebhaScreen';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
             Image.asset(
                  'assets/images/head of seb7a.png',
               height: 130,
                ),
            Padding(
              padding: EdgeInsets.only(top: 75.0),
            child: GestureDetector(
              onTap: onClick,
              child: Transform.rotate(
                angle: angle,
                child: Image.asset(
                  'assets/images/body of seb7a.png',
                  height: 270,
                ),
              ),
            ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Text(
              'عدد التسبيحات',
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppColor.primary,
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  '$count',
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppColor.primary,
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  azkar[index],
                ),
              ),
            ),
          ],
        )
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
