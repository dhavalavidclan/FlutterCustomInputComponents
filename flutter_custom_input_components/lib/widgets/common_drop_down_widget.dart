import '../utils/common_imports.dart';

class CommonDropDownWidget extends StatelessWidget {
  final double? width;
  final String title;
  final String hintText;
  final TextEditingController controller;
  final List<String> items;

  const CommonDropDownWidget(
      {super.key,
      this.width,
      required this.title,
      required this.controller,
      required this.items, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(title, style: AppFontStyle.textFieldTitleStyle()),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          width: width,
          alignment: Alignment.center,
          child: DropdownButtonFormField<String>(
            isExpanded: true,
            alignment: Alignment.bottomCenter,
            icon: Image.asset(AppImages.icDownIcon),
            decoration: InputDecoration(
              hintText: hintText,
              errorStyle: AppFontStyle.errorTextStyle(),
              contentPadding: const EdgeInsets.all(15),
              counterStyle: AppFontStyle.customTextStyle(
                  AppColor.primaryBlueLight, FontType.regular, 12.0),
              filled: true,
              fillColor: AppColor.secondaryGray2,
              border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1.2, color: AppColor.primaryGray),
                  borderRadius: BorderRadius.circular(10)),
              errorBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 1.2, color: AppColor.primaryBlueColor),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 1.2, color: AppColor.primaryBlueColor),
                  borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1.2, color: AppColor.primaryGray),
                  borderRadius: BorderRadius.circular(10)),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 1.2, color: AppColor.primaryBlueColor),
                  borderRadius: BorderRadius.circular(10)),
            ),
            items: items
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
            onChanged: (Object? value) {
              controller.text = value.toString();
           },
          ),
        ),
      ],
    );
  }
}
