import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:data_app/routes/route.dart';

void main() {
  runApp(
    const ProviderScope(
      // Riverpod's provider scope
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter, // Connect go_router to your app
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
