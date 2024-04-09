import "package:flutter/cupertino.dart";

class D0b_picker extends StatefulWidget {
  const D0b_picker({super.key});

  @override
  State<D0b_picker> createState() => _D0b_pickerState();
}

class _D0b_pickerState extends State<D0b_picker> {
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return CupertinoDatePicker(
      mode: CupertinoDatePickerMode.date,
      onDateTimeChanged: (datetime) => setState(() {
      this.dateTime = datetime;
      print("$dateTime");
    }),
      initialDateTime: dateTime,
      minimumYear: 2015,
      maximumYear: DateTime.now().year,
      
    );
  }
}
