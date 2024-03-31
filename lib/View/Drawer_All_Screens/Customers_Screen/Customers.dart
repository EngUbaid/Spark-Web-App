
import 'package:flutter/material.dart';

class CostemersScreen extends StatefulWidget {
  const CostemersScreen({super.key});

  @override
  State<CostemersScreen> createState() => _CostemersScreenState();
}

class _CostemersScreenState extends State<CostemersScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Costemers Screen"),
      ),
    );
  }
}