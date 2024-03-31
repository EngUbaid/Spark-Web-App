
import 'package:flutter/material.dart';

class SalesStandingsScreen extends StatefulWidget {
  const SalesStandingsScreen({super.key});

  @override
  State<SalesStandingsScreen> createState() => _SalesStandingsScreenState();
}

class _SalesStandingsScreenState extends State<SalesStandingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Sales Standings Screen"),
      ),
    );
  }
}