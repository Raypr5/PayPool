import 'package:flutter/material.dart';

class BoletoTile extends StatelessWidget {
  final data;
  const BoletoTile({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data.name!),
      subtitle: Text("Vence em ${data.dueDate}"),
    );
  }
}
