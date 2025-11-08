import 'package:flutter/material.dart';

import 'taptest_runtime.dart';

/// Runtime data provided by TapTest to adjust your app during testing.
/// It is provided by TapTest's Config builder and accessible anywhere in the widget tree via [TapTestRuntime.of].
final class TapTestRuntimeData {
  /// Theme mode to use in the app.
  final ThemeMode themeMode;

  /// Locale to use in the app.
  final Locale locale;

  /// Initial route to start the app with.
  final String? initialRoute;

  /// Additional extensions provided by TapTester.
  final Iterable<dynamic> extensions;

  /// Retrieves the first extension of type [T], or null if none found.
  T? extension<T>() => extensions.whereType<T>().firstOrNull;

  /// Creates a new instance of [TapTestRuntimeData].
  const TapTestRuntimeData({
    required this.themeMode,
    required this.locale,
    required this.initialRoute,
    required this.extensions,
  });
}
