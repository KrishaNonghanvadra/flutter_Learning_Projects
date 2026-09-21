import 'package:flutter/material.dart';

class CelenderExample extends StatefulWidget {
  const CelenderExample({super.key});

  @override
  State<CelenderExample> createState() => _CelenderExampleState();
}

class _CelenderExampleState extends State<CelenderExample> {
  DateTime? date;

  Future<void> pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: date ?? DateTime.now(),
      firstDate: DateTime(2015, 0),
      lastDate: DateTime(2101)
    );
    if (!mounted || picked == null) return;
    setState(() => date = picked);
  }

  void setDateValue(){
    setState(() {
      date = DateTime(2024, 1, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    final text = date == null ? 'No Date ': "${date!.day}/${date!.month}/${date!.year}";
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(text),
            ElevatedButton(
              onPressed: pickDate,
              child: const Text('Pick Date'),
            ),
            ElevatedButton(
              onPressed: setDateValue,
              child: const Text('Set Date to 01/01/2024'),
            )
          ],
        )
      )
    );
  }
}