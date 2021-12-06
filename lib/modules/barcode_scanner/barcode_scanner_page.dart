import 'package:flutter/material.dart';
import 'package:paypool/shared/themes/app_colors.dart';
import 'package:paypool/shared/themes/app_textstyles.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.black,
      title: Text(
        "Escaneie o codigo de barras do boleto",
        style: TextStyles.buttonBackground,
      ),
      leading: BackButton(
        color: AppColors.background,
      ),
    ),);
  }
}
