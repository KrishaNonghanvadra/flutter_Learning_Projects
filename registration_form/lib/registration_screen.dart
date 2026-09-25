import 'package:flutter/material.dart';
import 'package:registration_form/resourses/reg_form_color.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  String selectedgender = "Male";
  List<String> selectedLang = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RegFormColor.backgroundColor,

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text(
              'Registration Form',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: RegFormColor.heading,
              ),
            ),

            const SizedBox(height: 5,),

            // Radio Button

            RadioListTile<String>(
              title: const Text("Male"),
              value: "Male",
              groupValue: selectedgender,
              onChanged: (value){
                setState(() {
                  selectedgender = value!;
                });
              },
            ),

            const SizedBox(height: 5,),

            RadioListTile<String>(
              title: const Text("Female"),
              value: "Female",
              groupValue: selectedgender,
              onChanged: (value){
                setState(() {
                  selectedgender = value!;
                });
              },
            ),

            const SizedBox(height: 5,),

            RadioListTile<String>(
              title: const Text("Other"),
              value: "Other",
              groupValue: selectedgender,
              onChanged: (value){
                setState(() {
                  selectedgender = value!;
                });
              },
            ),

            const SizedBox(height: 5,),

            Text(
              "Selected Gender :  $selectedgender",
              style: TextStyle(
                fontSize: 20,
              ),
            ),

            CheckboxListTile(
              title: const Text("Python"),
              value: selectedLang.contains("Python"), 
              onChanged: (value){
                setState(() {
                  if (value == true){
                    selectedLang.add("Python");
                  }
                  else {
                    selectedLang.remove("Python");
                  }
                });
              }
            ),

            CheckboxListTile(
              title: const Text("Java"),
              value: selectedLang.contains("Java"),
              onChanged: (value) {
                setState(() {
                  if (value == true) {
                    selectedLang.add("Java");
                  } else {
                    selectedLang.remove("Java");
                  }
                });
              },
            ),

            CheckboxListTile(
              title: const Text("Dart"),
              value: selectedLang.contains("Dart"),
              onChanged: (value) {
                setState(() {
                  if (value == true) {
                    selectedLang.add("Dart");
                  } else {
                    selectedLang.remove("Dart");
                  }
                });
              },
            ),

            CheckboxListTile(
              title: const Text("SQL"),
              value: selectedLang.contains("SQL"),
              onChanged: (value) {
                setState(() {
                  if (value == true) {
                    selectedLang.add("SQL");
                  } else {
                    selectedLang.remove("SQL");
                  }
                });
              },
            ),

             ElevatedButton(
              onPressed: () {
                print("Selected Languages:");

                for (String language in selectedLang) {
                  print(language);
                }
              },
              child: const Text("Print Selected Languages"),
            ),

          ],
        ),
      ),
    );
  }
}