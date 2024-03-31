import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spark/View/Log_in_Screen/login_screen.dart';
import 'package:spark/common/iconchanges.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => navigationprovider()),
        // ChangeNotifierProvider(create: (context) => tableticonchanges()),
      ],
      child: MaterialApp(
        title: "Spark",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Loginscreen()
                ),
      ),
    );
  }
}
