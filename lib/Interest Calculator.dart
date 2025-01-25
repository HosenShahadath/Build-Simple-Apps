import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(SimpleInterstApp());

class SimpleInterstApp extends StatelessWidget {
  const SimpleInterstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Interest Calculator',
      home: InterestCalculatorScreen(),
    );
  }
}

class InterestCalculatorScreen extends StatefulWidget {
  const InterestCalculatorScreen({super.key});

  @override
  State<InterestCalculatorScreen> createState() => _InterestCalculatorScreenState();
}

class _InterestCalculatorScreenState extends State<InterestCalculatorScreen> {
  final TextEditingController principal = TextEditingController();
  final TextEditingController rate = TextEditingController();
  final TextEditingController time = TextEditingController();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest Calculator'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _buidTextField(principal, 'Principle'),
            _buidTextField(rate, 'Rate of Interest'),
            _buidTextField(time, 'Time in Years'),
            SizedBox(height: 20,),
            MaterialButton(
              onPressed:_calculateInterest,
              child: const Text('Calculate'),
            ),
            SizedBox(height: 20,),
            Text(result,style: const TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }

  Widget _buidTextField(TextEditingController controller, String label) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
      keyboardType: TextInputType.number,
    );
  }

  void _calculateInterest() {
    double principalController = double.tryParse(principal.text) ?? 0.0;
    double rateController = double.tryParse(rate.text) ?? 0.0;
    double timeController = double.tryParse(time.text) ?? 0.0;

    double interest = principalController * rateController * timeController / 100;
    setState(() {
      result = 'Simple Interset: \$${interest.toStringAsFixed(2)}';
    });

  }

}

