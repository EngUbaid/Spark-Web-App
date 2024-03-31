
import 'package:flutter/material.dart';

class JobGridScreen extends StatefulWidget {
  const JobGridScreen({super.key});

  @override
  State<JobGridScreen> createState() => _JobGridScreenState();
}

class _JobGridScreenState extends State<JobGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Job Grid"),
      ),
    );
  }
}