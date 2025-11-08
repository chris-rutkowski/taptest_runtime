import 'package:flutter/material.dart';
import 'package:taptest_runtime/taptest_runtime.dart';

final class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      locale: TapTestRuntime.of(context)?.locale,
      themeMode: TapTestRuntime.of(context)?.themeMode,
      debugShowCheckedModeBanner: TapTestRuntime.of(context) == null,
      home: Placeholder(),
    );
  }
}
