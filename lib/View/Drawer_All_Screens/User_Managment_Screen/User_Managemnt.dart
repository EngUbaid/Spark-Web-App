
import 'package:flutter/material.dart';

class UserMAnagementScreen extends StatefulWidget {
  const UserMAnagementScreen({super.key});

  @override
  State<UserMAnagementScreen> createState() => _UserMAnagementScreenState();
}

class _UserMAnagementScreenState extends State<UserMAnagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("User Management Screen"),
      ),
    );
  }
}