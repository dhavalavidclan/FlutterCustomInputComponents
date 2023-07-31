import '../utils/common_imports.dart';

class CheckBoxWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function(bool isSelected) onTap;
  final EdgeInsetsGeometry? padding;
  final double? elementWidth;

  CheckBoxWidget(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.onTap,
      this.padding,
      this.elementWidth});

  late final ValueNotifier<bool> isChecked = ValueNotifier(isSelected);

  @override
  Widget build(BuildContext context) {
    Image icCheckedBox = Image.asset(AppImages.icCheckedBox);
    Image icUncheckedBox = Image.asset(AppImages.icUncheckedBox);
    return ValueListenableBuilder(
        valueListenable: isChecked,
        builder: (context, flag, child) {
          return Padding(
            padding: padding ?? const EdgeInsets.symmetric(vertical: 8),
            child: InkWell(
              splashColor: AppColor.transparent,
              highlightColor: AppColor.transparent,
              onTap: () {
                isChecked.value = !isChecked.value;
                onTap(isChecked.value);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  (isChecked.value ) ? icCheckedBox : icUncheckedBox,
                  const SizedBox(width: 4),
                  SizedBox(
                    width: elementWidth,
                    child: Text(title,
                        style: AppFontStyle.customTextStyle(
                            (isChecked.value || isSelected)
                                ? AppColor.primaryBlueDark
                                : AppColor.secondaryBlue2,
                            (isChecked.value || isSelected)
                                ? FontType.bold
                                : FontType.medium,
                            16)),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ),
          );
        });
  }
}
