import '../utils/common_imports.dart';

class ButtonWidget extends StatelessWidget {
  final Color? buttonColor;
  final Color? textColor;
  final Color? borderColor;
  final double? height;
  final double? width;
  final String title;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function() onPressed;

  const ButtonWidget(
      {super.key,
      this.buttonColor,
      this.borderColor,
      required this.title,
      this.height,
      this.width,
      this.textColor,
      required this.onPressed,
      this.prefixIcon,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: height ?? 56,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonColor ?? AppColor.primaryBlueColor,
          border: borderColor != null
              ? Border.all(
                  color: borderColor!,
                )
              : null,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            prefixIcon != null ? prefixIcon! : const SizedBox(),
            prefixIcon != null ? const SizedBox(width: 12) : const SizedBox(),
            Text(
              title,
              style: AppFontStyle.customTextStyle(
                  textColor ?? AppColor.defaultWhite, FontType.bold, 18),
            ),
            suffixIcon != null ? const SizedBox(width: 12) : const SizedBox(),
            suffixIcon != null ? suffixIcon! : const SizedBox()
          ],
        ),
      ),
    );
  }
}
