import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_font_style.dart';
import '../utils/app_images.dart';

class RadioButtonWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function() onTap;
  final TextSpan? additionalTitle;
  final double? elementWidth;

  const RadioButtonWidget(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.onTap,
      this.additionalTitle,
      this.elementWidth});

  @override
  Widget build(BuildContext context) {
    Image icUnselectedRadio = Image.asset(AppImages.icUnselectedRadio);
    Image icSelectedRadio = Image.asset(AppImages.icSelectedRadio);

    return InkWell(
      highlightColor: AppColor.transparent,
      splashColor: AppColor.transparent,
      onTap: () {
        onTap();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          isSelected ? icSelectedRadio : icUnselectedRadio,
          const SizedBox(width: 4),
          SizedBox(
            width: elementWidth,
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: title,
                  style: AppFontStyle.customTextStyle(
                      isSelected ? AppColor.primaryBlueColor : AppColor.secondaryBlue2,
                      isSelected ? FontType.bold : FontType.medium,
                      16)),
              additionalTitle ?? const TextSpan(),
            ])),
          )
        ],
      ),
    );
  }
}
