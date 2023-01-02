import 'package:flutter/material.dart';

import '../style/apptext_style.dart';

class AppSwitch extends StatelessWidget {
  final String title;
  final bool value;
  final void Function(bool)? onChanged;
  const AppSwitch({
    Key? key,
    this.title = '',
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: value,
      onChanged: onChanged,
      activeColor: Colors.indigo,
      visualDensity: VisualDensity.compact,
      activeTrackColor: Colors.white,
      title: Text(title, style: AppTextStyle.loginFontStyle()),
    );
  }
}
