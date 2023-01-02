import 'package:flutter/material.dart';

import '../../style/border_style.dart';

class AppFormField extends StatelessWidget {
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffix;
  final void Function()? onTap;
  final bool? enabled;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final Color? labelTextColor;
  final bool readOnly;
  final TextEditingController? controller;
  const AppFormField(
      {Key? key,
      this.labelText,
      this.prefixIcon,
      this.suffix,
      this.onTap,
      this.enabled,
      this.floatingLabelBehavior,
      this.labelTextColor = Colors.grey,
      this.readOnly = false,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      enabled: enabled,
      readOnly: readOnly,
      controller: controller,
      cursorColor: Colors.white,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          isDense: true,
          floatingLabelBehavior: floatingLabelBehavior,
          enabledBorder: kDefaultBorder,
          disabledBorder: kDefaultBorder,
          errorBorder: kDefaultBorder,
          focusedBorder: kDefaultBorder,
          labelText: labelText,
          labelStyle: TextStyle(color: labelTextColor),
          prefixIcon: prefixIcon,
          suffixIcon: suffix),
    );
  }
}
