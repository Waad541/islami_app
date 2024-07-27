import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'AppColor.dart';
import 'Provider/SuraDetailsProvider.dart';
import 'Sura_model.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName='suraDetails';
  const SuraDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;

    return ChangeNotifierProvider(
      create: (context) => SuraDetailsProvider()..loadSuraFile(model.index),
      builder: (context, child) {
        var provider = Provider.of<SuraDetailsProvider>(context);

        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg3.png"))),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                model.name,
              ),
            ),
            body: Padding(
              padding: EdgeInsets.only(left: 18, right: 18, top: 18),
              child: Card(
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: AppColor.primary)),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Text(
                      "${provider.verses[index]} ($index )",
                      textAlign: TextAlign.center,
                       textDirection: TextDirection.rtl,
                    );
                  },
                  itemCount: provider.verses.length,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
