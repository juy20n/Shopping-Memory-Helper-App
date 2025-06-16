import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // 첫 화면 연결

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '장보기 기억 도우미',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      home: const HomeScreen(), // 시작 화면으로 이동
    );
  }
}