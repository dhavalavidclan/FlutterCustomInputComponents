import '../utils/common_imports.dart';
import '../utils/model_check_box.dart';
import 'check_box_widget.dart';
import 'text_field_widget.dart';

class CheckBoxListWidget extends StatelessWidget {
  final List<ModelSelection> checkBoxList;
  final bool hasOtherField;
  final TextEditingController? controller;
  final double? elementWidth;

  CheckBoxListWidget(
      {super.key,
      required this.checkBoxList,
      this.hasOtherField = false,
      this.controller,
      this.elementWidth});

  final ValueNotifier<bool> isOtherSelected = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: -8,
      children: checkBoxList
          .map((e) => Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CheckBoxWidget(
                    elementWidth: hasOtherField &&
                            (checkBoxList.indexOf(e) == (checkBoxList.length - 1))
                        ? 75
                        : elementWidth,
                    onTap: (isSelected) {
                      if (checkBoxList.indexOf(e) == (checkBoxList.length - 1)) {
                        isOtherSelected.value =
                            !checkBoxList[checkBoxList.indexOf(e)].isSelected;
                      }
                      checkBoxList[checkBoxList.indexOf(e)].isSelected =
                          !checkBoxList[checkBoxList.indexOf(e)].isSelected;
                           },
                    isSelected: checkBoxList[checkBoxList.indexOf(e)].isSelected,
                    title: checkBoxList[checkBoxList.indexOf(e)].title,
                  ),
                  checkBoxList.indexOf(e) == (checkBoxList.length - 1)
                      ? ValueListenableBuilder(
                          valueListenable: isOtherSelected,
                          builder: (context, flag, child) {
                            return (isOtherSelected.value ||
                                checkBoxList[checkBoxList.indexOf(e)].isSelected) &&
                                hasOtherField
                                ? Expanded(
                                    child: TextFieldWidget(
                                        name: "",
                                        contentPadding: const EdgeInsets.symmetric(
                                            horizontal: 4, vertical: 6),
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
                      : const SizedBox()
                ],
              ))
          .toList(),
    );
  }
}
