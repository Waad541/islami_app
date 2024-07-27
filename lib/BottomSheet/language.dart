import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../AppColor.dart';


class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    Locale currentLocale = context.locale;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
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
              context.setLocale(Locale("en"));

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "english".tr(),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: currentLocale == Locale('en')
                          ? AppColor.primary
                          : AppColor.colorBlack),
                ),
                currentLocale == Locale('en')
                    ? Icon(
                  Icons.done,
                  size: 35,
                )
                    : SizedBox()
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          InkWell(
            onTap: () {
              // provider.changeLanguage(context,"ar");
              context.setLocale(Locale("ar"));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("arabic".tr(),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: currentLocale != Locale('en')
                            ? AppColor.primary
                            : AppColor.colorBlack)),
                currentLocale != Locale('en')
                    ? Icon(
                  Icons.done,
                  size: 35,
                )
                    : SizedBox()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

