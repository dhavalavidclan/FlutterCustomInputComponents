import 'package:flutter/services.dart';
import '../utils/common_imports.dart';

enum TextValidation { required, number, name, email, password, time }

class TextFieldWidget extends StatelessWidget {
  final String name;
  final double? height;
  final double? width;
  final String? initialValue;
  final String? placeholder;
  final int? maxLimit;
  final int? maxLine;
  final bool isSecureText;
  final bool autoValidate;
  final Function()? onTapShow;
  final bool isReadOnly;
  final bool addRequiredStar;
  final ImageIcon? prefixIconImage;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Widget? suffixIconWidget;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Function onSubmitField;
  final Function()? onEditingComplete;
  final GestureTapCallback? onTap;
  final List<TextValidation> validations;
  final List<String> errorMessages;
  final IconButton? suffixIconButton;
  final Function(String)? onchange;
  final String? compareString;
  final bool isEnabled;
  final bool autoFocus;
  final bool hasPrefix;
  final bool isDance;
  final bool isDigitOnly;
  final EdgeInsetsGeometry? contentPadding;
  final TextCapitalization textCapitalization;
  final bool enableInputFormatter;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? nextFocusNode;
  final TextSpan? additionalTitle;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final bool centerContent;
  final Widget? additionalTitleWidget;

  const TextFieldWidget({
    Key? key,
    required this.name,
    this.initialValue,
    this.placeholder,
    this.maxLimit,
    this.maxLine,
    this.isSecureText = false,
    this.isReadOnly = false,
    this.prefixIconImage,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    required this.controller,
    this.focusNode,
    required this.onSubmitField,
    this.onEditingComplete,
    this.onTap,
    required this.validations,
    required this.errorMessages,
    this.suffixIconButton,
    this.onchange,
    this.compareString,
    this.isEnabled = true,
    this.autoFocus = false,
    this.hasPrefix = true,
    this.contentPadding,
    this.textCapitalization = TextCapitalization.none,
    this.onTapShow,
    this.enableInputFormatter = true,
    this.inputFormatters,
    this.nextFocusNode,
    this.height,
    this.width,
    this.autoValidate = true,
    this.suffixIconWidget,
    this.additionalTitle,
    this.isDance = false,
    this.textStyle,
    this.hintStyle,
    this.centerContent = false,
    this.addRequiredStar = false,
    this.additionalTitleWidget,
    this.isDigitOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              name.isEmpty
                  ? const SizedBox()
                  : Flexible(
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(text: name, style: AppFontStyle.textFieldTitleStyle()),
                        additionalTitle ?? const TextSpan(),
                        addRequiredStar
                            ? TextSpan(
                                text: " *",
                                style: AppFontStyle.customTextStyle(
                                    AppColor.primaryRed, FontType.medium, 16))
                            : const TextSpan(),
                      ])),
                    ),
              const SizedBox(width: 8),
              additionalTitleWidget != null ? additionalTitleWidget! : const SizedBox()
            ],
          ),
          SizedBox(height: name.isEmpty ? 0 : 8),
          SizedBox(
            height: height,
            width: width,
            child: TextFormField(
                autovalidateMode:
                    autoValidate ? AutovalidateMode.onUserInteraction : null,
                textCapitalization: textCapitalization,
                textAlign: centerContent ? TextAlign.center : TextAlign.start,
                textAlignVertical: centerContent ? TextAlignVertical.center : null,
                focusNode: focusNode,
                enabled: isEnabled,
                autofocus: autoFocus,
                autocorrect: false,
                enableSuggestions: false,
                cursorColor: AppColor.primaryBlueDark,
                controller: controller,
                obscureText: isSecureText,
                readOnly: isReadOnly,
                maxLength: maxLimit,
                maxLines: isSecureText ? 1 : maxLine,
                keyboardType: keyboardType,
                inputFormatters:
                    isDigitOnly ? [FilteringTextInputFormatter.digitsOnly] : [],
                style: textStyle ?? AppFontStyle.textFieldTextStyle(),
                onChanged: onchange,
                decoration: InputDecoration(
                  isDense: isDance,
                  errorStyle: AppFontStyle.errorTextStyle(),
                  contentPadding: contentPadding ?? const EdgeInsets.all(15),
                  prefixIcon: hasPrefix
                      ? prefixIcon != null
                          ? Icon(prefixIcon, size: 20, color: AppColor.primaryBlueDark)
                          : //widget.prefixIconImage,
                          SizedBox(
                              width: 15.0,
                              height: 15.0,
                              child: Center(
                                child: prefixIconImage,
                              ),
                            )
                      : null,
                  suffixIcon: suffixIconWidget ?? suffixIconButtonWidget(),
                  hintText: placeholder,
                  hintStyle: hintStyle ?? AppFontStyle.textFieldPlaceholderStyle(),
                  counterStyle: AppFontStyle.customTextStyle(
                      AppColor.primaryBlueLight, FontType.regular, 12.0),
                  filled: true,
                  fillColor: AppColor.secondaryGray2,
                  border: isEnabled
                      ? OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.2, color: AppColor.primaryBlueColor),
                          borderRadius: BorderRadius.circular(10))
                      : OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1.2, color: AppColor.primaryGray),
                          borderRadius: BorderRadius.circular(10)),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1.2, color: AppColor.primaryRed),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1.2, color: AppColor.primaryBlueColor),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1.2, color: AppColor.primaryGray),
                      borderRadius: BorderRadius.circular(10)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1.2, color: AppColor.primaryBlueColor),
                      borderRadius: BorderRadius.circular(10)),
                ),
                onFieldSubmitted: (value) {
                  onSubmitField();
                  if (focusNode != null && nextFocusNode != null) {
                    changeFocus(context, focusNode!, nextFocusNode!);
                  }
                },
                textInputAction:
                    nextFocusNode != null ? TextInputAction.go : TextInputAction.done,
                onEditingComplete: onEditingComplete,
                onTap: onTap,
                validator: (value) {
                  if (value != null) {
                    String err = "";
                    validations.asMap().forEach((index, element) {
                      if ((element == TextValidation.required) &&
                          !isEnteredValue(value)) {
                        err = errorMessages[index];
                      } else if ((element == TextValidation.email) &&
                          !isValidEmail(value)) {
                        err = errorMessages[index];
                      } else if ((element == TextValidation.time) &&
                          !isValidTime(value)) {
                        err = errorMessages[index];
                      }
                    });
                    if (err.isNotEmpty) {
                      return err;
                    }
                    return null;
                  }
                  return null;
                }),
          )
        ]);
  }

  Widget? suffixIconButtonWidget() {
    if (isPasswordTypeField() == true) {
      return Builder(builder: (context) {
        return InkWell(
            child: Image.asset(
              isSecureText ?  AppImages.icLock : AppImages.icUnlock,
              color: AppColor.primaryBlueDark,
            ),
            onTap: () {
              onTapShow!();
            });
      });
    } else {
      if (suffixIconButton != null) {
        return suffixIconButton;
      } else if (suffixIcon != null) {
        return Icon(suffixIcon, size: 20, color: AppColor.primaryGray);
      }
      return null;
    }
  }

  bool isPasswordTypeField() {
    var isPasswordType = false;
    validations.asMap().forEach((index, element) {
      if (element == TextValidation.password) {
        isPasswordType = true;
      }
    });
    return isPasswordType;
  }

  void changeFocus(BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    // currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  bool isEnteredValue(String? value) {
    return value?.trim().isNotEmpty ?? false;
  }

  bool isValidEmail(String value) {
    final bool emailValid =
        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value);
    return emailValid;
  }

  bool isValidTime(String? value) {
    return value != "00:00";
  }
}
