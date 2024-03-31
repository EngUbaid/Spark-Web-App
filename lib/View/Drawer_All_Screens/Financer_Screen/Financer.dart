
import 'package:flutter/material.dart';

class FinancierScreen extends StatefulWidget {
  const FinancierScreen({super.key});

  @override
  State<FinancierScreen> createState() => _FinancierScreenState();
}

class _FinancierScreenState extends State<FinancierScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Financier Screen"),
      ),
    );
  }
}