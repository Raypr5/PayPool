import 'package:flutter/material.dart';
import 'package:paypool/shared/themes/app_colors.dart';
import 'package:paypool/shared/themes/app_textstyles.dart';

class InputTextWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  final String? initiaValue;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  final void Function(String value) onChanged;

  const InputTextWidget({
    Key? key,
    required this.label,
    required this.icon,
    required this.validator,
    required this.controller,
    this.initiaValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 17),
      child: Column(
        children: [
          TextFormField(
            controller: controller,
            initialValue: initiaValue,
            onChanged: onChanged,
            style: TextStyles.input,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              labelText: label,
              labelStyle: TextStyles.input,
              icon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Icon(
                      icon,
                      color: AppColors.primary,),
                  ),
                  Container(
                    width: 1,
                    height: 18,
                    color: AppColors.stroke,
                  )
                ],
              ),
                border: InputBorder.none),
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: AppColors.stroke,
          )
        ],
      ),
    );
  }
}
