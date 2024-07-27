import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png',),
        Text('إذاعه القران الكريم'),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/Icon metro-next.png',),
            Image.asset('assets/images/Icon awesome-play.png',),
            Image.asset('assets/images/Icon metro-next2.png',),
          ],
        ),
      ],
    );
  }
}
