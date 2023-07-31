import '../utils/common_imports.dart';

class InnerScreenAppBarWidget extends StatelessWidget {
  final Function() onBack;
  final Function() onTapPreview;
  final String title;
  final bool hasPreview;

  const InnerScreenAppBarWidget(
      {super.key, required this.onBack, required this.title, required this.onTapPreview, this.hasPreview = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColor.transparent.withOpacity(0.04),
      flexibleSpace: Container(
        height: 68,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
            color: AppColor.primaryBlueLight2,
            boxShadow: [
              BoxShadow(
                  color: AppColor.primaryWhite, offset: Offset(0, 8), blurRadius: 12)
            ],
            border:
                Border(bottom: BorderSide(color: AppColor.primaryBlueLight, width: 0.8))),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(AppImages.icBack,
                        color: AppColor.primaryBlueShade2,
                        height: 36,
                        width: 36,
                        fit: BoxFit.scaleDown),
                    Text(
                      "Back",
                      style: AppFontStyle.customTextStyle(
                          AppColor.primaryBlueShade2, FontType.bold, 16),
                    )
                  ],
                ),
              ),
            ),
            Text(
              title,
              style: AppFontStyle.customTextStyle(
                  AppColor.primaryBlueColor, FontType.extraBold, 20),
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                !hasPreview ? const SizedBox(width: 107) : InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Container();
                        //return const PDFViewScreen();
                      },
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.secondaryBlue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      ],
                    ) ,
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
