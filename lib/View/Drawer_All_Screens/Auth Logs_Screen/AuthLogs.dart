
import 'package:flutter/material.dart';

class AuthLogScreen extends StatefulWidget {
  const AuthLogScreen({super.key});

  @override
  State<AuthLogScreen> createState() => _AuthLogScreenState();
}

class _AuthLogScreenState extends State<AuthLogScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("AuthLogScreen Screen"),
      ),
    );
  }
}