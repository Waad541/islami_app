import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../AppColor.dart';
import '../Provider/My_provider.dart';

class ThemeBottom extends StatelessWidget {
  const ThemeBottom({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Container(
      decoration: BoxDecoration(
        color: provider.appTheme == ThemeMode.dark
            ? AppColor.primaryDark
            : Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      padding: EdgeInsets.all(18),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);

              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "light".tr(),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: provider.appTheme == ThemeMode.dark
                          ? Colors.white
                          : AppColor.primary),
                ),
                provider.appTheme == ThemeMode.dark
                    ? SizedBox()
                    : Icon(
                  Icons.done,
                  size: 35,
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          InkWell(
            onTap: () {
              //change var
              // setState
              provider.changeTheme(ThemeMode.dark);

              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("dark".tr(),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: provider.appTheme == ThemeMode.dark
                            ? AppColor.yellowColor
                            : AppColor.colorBlack)),
                provider.appTheme == ThemeMode.light
                    ? SizedBox()
                    : Icon(
                  Icons.done,
                  size: 35,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
