import 'package:flutter/material.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final bool enablePrimaryColor;
  final String
  const SetLabelButtons({
    Key key,
    required this.primaryLabel,
  required this.primaryOnPressed,
  required this.secondaryLabel,
  required this.secondaryOnPressed,
    this.enablePrimaryColor = false,

}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
