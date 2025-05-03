import 'package:flutter/material.dart';

class InterestCalculatorScreen extends StatefulWidget {
  const InterestCalculatorScreen({super.key});

  @override
  State<InterestCalculatorScreen> createState() =>
      _InterestCalculatorScreenState();
}

class _InterestCalculatorScreenState extends State<InterestCalculatorScreen> {
  final TextEditingController principalController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest Calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            _buildTextField(principalController, 'Principle'),
            SizedBox(
              height: 10,
            ),
            _buildTextField(rateController, 'Rate of Interest'),
            SizedBox(
              height: 10,
            ),
            _buildTextField(timeController, 'Time in Years'),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: _calculateInterest,
              color: Colors.blueAccent,
              child: Text('Calculate'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              result,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
    );
  }

  void _calculateInterest(){
    double principle = double.tryParse(principalController.text) ?? 0;
    double rate = double.tryParse(rateController.text) ?? 0;
    double time = double.tryParse(timeController.text) ?? 0;

    double interest = principle * time * rate / 100;

    setState(() {
      result = 'Simple Interest : \$${interest.toStringAsFixed(2)}';
    });
  }
}
