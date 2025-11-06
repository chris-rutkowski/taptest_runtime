import 'package:flutter/material.dart';
import 'package:taptest_runtime/taptest_runtime.dart';

final class MyApp extends StatelessWidget {
  final RuntimeParams? params;

  const MyApp({super.key, this.params});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      locale: params?.locale.value,
      themeMode: params?.themeMode.value,
      debugShowCheckedModeBanner: params == null,
      home: Placeholder(),
    );
  }
}
