import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String selectedButton = "";
  double answer = 0;

  final TextEditingController amountController = TextEditingController();
  final TextEditingController gstController = TextEditingController();
  final TextEditingController totalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GST Calculator"),
        centerTitle: true,
        backgroundColor: Colors.red.shade300,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              "GST Calculator",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
              ),
            SizedBox(height: 20),
            Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: 500,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.red.shade200,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Column(
          children: [
            Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    selectedButton = "total";
                    answer = 0; //clear previous answer
                  });
                }, child: Text("total"),
              ),

              const SizedBox(width: 50),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    selectedButton = "amount";
                    answer = 0; //clear previous answer
                  });
                },
                child: Text("amount"),
              )
            ]
          ),

          SizedBox(height: 20),

          //If condition
          if (selectedButton == "total")...[
            TextField(
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^\d*\.?\d*'),
                ),
              ],
              decoration: InputDecoration(
                labelText: "Enter Amount :",
              ),
            ),
            

            SizedBox(height: 20),

            TextField(
              controller: gstController,
              keyboardType: TextInputType.numberWithOptions(decimal:true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^\d*\.?\d*'),
                ),
              ],
              decoration: InputDecoration(
                labelText: "Enter GST :"
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(onPressed: (){
              double amount = double.tryParse(amountController.text) ?? 0;
              double gst = double.tryParse(gstController.text) ?? 0;
              double? answer;
              setState(() {
                answer = amount + (amount * gst * 0.01);
              });
              amountController.clear();
              gstController.clear();
            }, 
            child: Text("Calculate")),
            SizedBox(height: 20),
            Text(
              "Answer : ${answer.toStringAsFixed(2)}",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              )
            )
          ],

          if (selectedButton == "amount") ...[
                TextField(
                  controller: totalController,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(r'^\d*\.?\d*'),
                    ),
                  ],
                  decoration: InputDecoration(labelText: "Enter Total :"),
                ),

                SizedBox(height: 20),

                TextField(
                  controller: gstController,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(r'^\d*\.?\d*'),
                    ),
                  ],
                  decoration: InputDecoration(labelText: "Enter GST :")
                ),

                SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    double total = double.tryParse(totalController.text) ?? 0;
                    double gst = double.tryParse(gstController.text) ?? 0;
                    setState(() {
                      answer = total / (1 + gst * 0.01);
                    });
                    totalController.clear();
                    gstController.clear();
                  },
                  child: Text("Calculate"),
                ),
                SizedBox(height: 20),
                Text(
                  "Answer : ${answer.toStringAsFixed(2)}",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],


          ],
        ),
      ),
          ],
        ),
      ),
    );
  }
}