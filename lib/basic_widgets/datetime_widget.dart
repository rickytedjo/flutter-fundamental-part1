import 'package:flutter/material.dart';

class MyDatetime extends StatefulWidget {
  const MyDatetime({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyDatetimeState createState() => _MyDatetimeState();
}

class _MyDatetimeState extends State<MyDatetime> {
  // Variable/State untuk mengambil tanggal
  DateTime selectedDate = DateTime.now();

  //  Initial SelectDate FLutter
  Future<void> _selectDate(BuildContext context) async {
    // Initial DateTime FIinal Picked
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("${selectedDate.toLocal()}".split(' ')[0]),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () => {
              _selectDate(context),
              // ignore: avoid_print
              print(selectedDate.day + selectedDate.month + selectedDate.year)
            },
            child: const Text('Pilih Tanggal'),
          ),
        ],
      ),
    );
  }
}
