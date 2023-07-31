import '../utils/common_imports.dart';

class BulletMarkTitle extends StatelessWidget {
  final String title;
  const BulletMarkTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 4.0,left: 6.0),
          child: Icon(Icons.circle, color: AppColor.primaryBlueColor, size: 10),
        ),
        const SizedBox(width: 12),
        Text(
          title,
          style: AppFontStyle.customTextStyle(
              AppColor.primaryBlueColor, FontType.extraBold, 17),
        )
      ],
    );
  }
}
