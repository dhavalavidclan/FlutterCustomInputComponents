import '../utils/common_imports.dart';
import 'button_widget.dart';

class CommonBottomBarWidget extends StatelessWidget {
  final Function() onTapBack;
  final Function() onTapNext;
  final String? navButtonTitle;

  const CommonBottomBarWidget(
      {super.key, required this.onTapBack, required this.onTapNext, this.navButtonTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 28),
      decoration: BoxDecoration(color: AppColor.defaultWhite, boxShadow: [
        BoxShadow(
            color: AppColor.primaryBlueColor.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, -4))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonWidget(
            width: 164,
            buttonColor: AppColor.transparent,
            borderColor: AppColor.primaryBlueLight,
            textColor: AppColor.primaryBlueLight,
            title: "Back",
            onPressed: () {
              Navigator.pop(context);
              onTapBack();
            },
          ),
          const SizedBox(width: 20),
          ButtonWidget(
            width: 164,
            title: navButtonTitle ?? "Next",
            onPressed: () {
              onTapNext();
            },
          ),
        ],
      ),
    );
  }
}
