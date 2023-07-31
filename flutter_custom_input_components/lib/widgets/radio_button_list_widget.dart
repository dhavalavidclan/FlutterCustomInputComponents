import 'package:flutter/material.dart';
import '../utils/common_imports.dart';
import '../utils/model_check_box.dart';
import 'radio_button_widget.dart';
import 'text_field_widget.dart';

class RadioButtonListWidget extends StatelessWidget {
  final List<ModelSelection> radioButtonList;
  final ValueNotifier<int> selectedIndex;
  final bool hasOtherField;
  final TextEditingController? otherFieldController;
  final double? elementWidth;

  RadioButtonListWidget(
      {super.key,
      required this.radioButtonList,
      required this.selectedIndex,
      this.hasOtherField = false,
      this.otherFieldController,
      this.elementWidth});

  final ValueNotifier<bool> isOtherSelected = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: -12,
      runSpacing: 15,
      children: radioButtonList
          .map((e) => ValueListenableBuilder(
              valueListenable: selectedIndex,
              builder: (context, value, child) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RadioButtonWidget(
                        title: radioButtonList[radioButtonList.indexOf(e)].title,
                        isSelected: selectedIndex.value == radioButtonList.indexOf(e),
                        elementWidth:( hasOtherField && (radioButtonList.indexOf(e) ==
                            (radioButtonList.length - 1))) ?  75 : elementWidth,
                        onTap: () {
                          if(hasOtherField){
                            otherFieldController?.clear();
                          }
                          if (radioButtonList.indexOf(e) ==
                              (radioButtonList.length - 1)) {
                            isOtherSelected.value = true;
                          } else {
                            isOtherSelected.value = false;
                          }
                          selectedIndex.value = radioButtonList.indexOf(e);
                          for (ModelSelection element in radioButtonList) {
                            if (radioButtonList.indexOf(element) == selectedIndex.value) {
                              element.isSelected = true;
                            } else {
                              element.isSelected = false;
                            }
                          }
                        }),
                    const SizedBox(width: 8),
                    radioButtonList.indexOf(e) == (radioButtonList.length - 1)
                        ? ValueListenableBuilder(
                            valueListenable: isOtherSelected,
                            builder: (context, flag, child) {
                              return isOtherSelected.value && hasOtherField
                                  ? Expanded(
                                    child: TextFieldWidget(
                                        name: "",
                                        contentPadding: const EdgeInsets.symmetric(
                                            horizontal: 4, vertical: 6),
                                        placeholder: "Please specify",
                                        maxLine: 1,
                                        hasPrefix: false,
                                        isDance: true,
                                        controller: otherFieldController,
                                        onSubmitField: () {},
                                        validations: const [],
                                        errorMessages: const []),
                                  )
                                  : const SizedBox();
                            })
                        : const SizedBox()
                  ],
                );
              }))
          .toList(),
    );

/*    ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: radioButtonList.length,
      itemBuilder: (context, index) {
        return
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 20);
      },
    );*/
  }
}
