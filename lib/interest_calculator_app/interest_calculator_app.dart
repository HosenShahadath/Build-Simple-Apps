import 'package:flutter/material.dart';

class InterestCalculatorApp extends StatefulWidget {
  const InterestCalculatorApp({super.key});

  @override
  State<InterestCalculatorApp> createState() => _InterestCalculatorAppState();
}

class _InterestCalculatorAppState extends State<InterestCalculatorApp> {
  final TextEditingController principleController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interest Calculator App'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _buildTextField(principleController, 'Principal'),
            _buildTextField(rateController, 'Rate of Interest'),
            _buildTextField(timeController, 'Time In Years'),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: _calculateInterest,
              child: const Text('Calculate'),
              color: Colors.amber,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              result,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  void _calculateInterest(){
    double principal = double.tryParse(principleController.text) ?? 0;
    double rate = double.tryParse(rateController.text) ?? 0;
    double time = double.tryParse(timeController.text) ?? 0;

    double interest = principal * rate * time / 100;

    setState(() {
      result = 'Simple Interest: \$${interest.toStringAsFixed(2)}';
    });
  }

}

Widget _buildTextField(TextEditingController controller, String label) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: label,
    ),
    keyboardType: TextInputType.number,
  );
}


