import 'package:flutter_custom_input_components/widgets/text_field_widget.dart';
import '../utils/common_imports.dart';
import '../utils/model_check_box.dart';
import 'check_box_widget.dart';

class TextFieldCheckBoxListWidget extends StatelessWidget {
  final List<ModelSelection> checkBoxList;
  final TextEditingController? controller;
  final bool hasOtherField;
  final double? elementWidth;

  const TextFieldCheckBoxListWidget(
      {super.key,
      required this.checkBoxList,
      this.controller,
      this.hasOtherField = false,
      this.elementWidth});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 56,
      runSpacing: 5,
      alignment: WrapAlignment.start,
      children: checkBoxList.map((e) {
        final ValueNotifier<bool> isOtherSelected = ValueNotifier<bool>(
            hasOtherField && (checkBoxList.indexOf(e) == (checkBoxList.length - 1))
                ? e.isSelected
                : false);
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CheckBoxWidget(
              elementWidth:
                  hasOtherField && (checkBoxList.indexOf(e) == (checkBoxList.length - 1))
                      ? 75
                      : elementWidth,
              onTap: (isSelected) {
                if (checkBoxList.indexOf(e) == (checkBoxList.length - 1)) {
                  isOtherSelected.value = isSelected;
                }
                checkBoxList[checkBoxList.indexOf(e)].isSelected =
                    !checkBoxList[checkBoxList.indexOf(e)].isSelected;
              },
              isSelected: checkBoxList[checkBoxList.indexOf(e)].isSelected,
              title: checkBoxList[checkBoxList.indexOf(e)].title,
            ),
            (hasOtherField && (checkBoxList.indexOf(e) == (checkBoxList.length - 1)))
                ? ValueListenableBuilder(
                    valueListenable: isOtherSelected,
                    builder: (context, flag, child) {
                      return (isOtherSelected.value) && hasOtherField
                          ? Expanded(
                              child: TextFieldWidget(
                                  name: "",
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 6),
                                  placeholder: "Please specify",
                                  maxLine: 1,
                                  hasPrefix: false,
                                  isDance: true,
                                  controller: controller,
                                  onSubmitField: () {},
                                  validations: const [],
                                  errorMessages: const []),
                            )
                          : const SizedBox();
                    })
                : SizedBox(
                    width: 60,
                    child: TextFieldWidget(
                        name: "",
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                        centerContent: true,
                        isDigitOnly: true,
                        maxLine: 1,
                        keyboardType: TextInputType.number,
                        placeholder: "Count",
                        hasPrefix: false,
                        isDance: true,
                        hintStyle: AppFontStyle.customTextStyle(
                            AppColor.secondaryGray, FontType.regular, 16),
                        controller: TextEditingController(),
                        onSubmitField: () {},
                        validations: const [],
                        errorMessages: const []),
                  ),
          ],
        );
      }).toList(),
    );
  }
}
