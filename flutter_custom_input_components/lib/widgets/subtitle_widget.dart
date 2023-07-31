import '../utils/common_imports.dart';

class SubTitleWidget extends StatelessWidget {
  final String title;

  const SubTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            border:
                Border(left: BorderSide(color: AppColor.primaryBlueLight, width: 4.4)),
          ),
          child: Text(
            title,
            style: AppFontStyle.customTextStyle(
                AppColor.primaryBlueColor, FontType.extraBold, 18),
          ),
        ),
      ],
    );
  }
}
