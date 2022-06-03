import 'package:artsophia/presentations/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatelessWidget {
  final IconData iconData;
  final TextInputType? keyboardType;
  final String hintText;
  final String? Function(String?)? validator;
  final bool isPassword;
  final TextCapitalization textCapitalization;
  final TextInputAction textInputAction;
  final Function(String)? onChanged;
  final int? maxLines;
  final int? maxLength;
  const CustomTextField({
    required this.iconData,
    this.validator,
    this.keyboardType,
    required this.hintText,
    this.maxLength,
    this.maxLines,
    this.isPassword = false,
    this.textInputAction = TextInputAction.none,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.w, right: 2.w),
          child: Icon(
            iconData,
            color: kPrimaryColor,
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 4.w),
            width: double.maxFinite,
            child: TextFormField(
              maxLength: maxLength,
              maxLines: maxLines,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              textInputAction: textInputAction,
              obscureText: isPassword,
              cursorColor: kPrimaryColor,
              keyboardType: keyboardType,
              textCapitalization: textCapitalization,
              style: kHeadStyle.copyWith(fontSize: 24),
              decoration: InputDecoration(
                hintText: hintText,
                helperStyle: kHeadStyle,
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: kPrimaryColor,
                  ),
                ),
                errorStyle:
                    kHeadStyle.copyWith(color: Colors.red, fontSize: 20),
                hintStyle:
                    kHeadStyle.copyWith(color: Colors.grey, fontSize: 24),
              ),
              validator: validator,
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}
