
import 'package:flutter/material.dart';

class JobBoardStandingsScreen extends StatefulWidget {
  const JobBoardStandingsScreen({super.key});

  @override
  State<JobBoardStandingsScreen> createState() => _JobBoardStandingsScreenState();
}

class _JobBoardStandingsScreenState extends State<JobBoardStandingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Job Board Standings Screen"),
      ),
    );
  }
}