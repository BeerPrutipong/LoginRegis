import 'package:flutter/material.dart';

class checkbox extends StatefulWidget {
  bool isChecked = false;
  checkbox({super.key, required this.isChecked});

  @override
  State<checkbox> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<checkbox> {
  // bool value = false;
  // bool newvlaue = true;
  bool isChecked = false;
  final String error = "กรุณากดยอมรับเงื่อนไข";
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      title: Text("ข้าพเจ้ายอมรับข้อตกลงและเงื่อนที่บริษัทกำหนด"),
      value: isChecked,
      onChanged: (bool? newValue) {
        setState(() {
          isChecked = newValue!;
        });
      },
    );
  }
}
