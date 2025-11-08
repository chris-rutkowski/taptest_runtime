import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'taptest_runtime_data.dart';

/// Inherited widget that provides TapTest runtime data to the widget tree.
/// You can access the runtime data anywhere in the widget tree using [TapTestRuntime.of].
final class TapTestRuntime extends InheritedNotifier<Listenable> {
  /// ThemeMode notifier, changes will notify dependents.
  final ValueListenable<ThemeMode> themeMode;

  /// Locale notifier, changes will notify dependents.
  final ValueListenable<Locale> locale;

  /// Initial route to start the app with.
  final String? initialRoute;

  /// Additional extensions provided by TapTester.
  final Iterable<dynamic> extensions;

  /// Creates a new instance of [TapTestRuntime].
  TapTestRuntime({
    super.key,
    required this.themeMode,
    required this.locale,
    required this.initialRoute,
    required this.extensions,
    required super.child,
  }) : super(notifier: Listenable.merge([themeMode, locale]));

  /// Retrieves the current [TapTestRuntimeData].
  TapTestRuntimeData get data => TapTestRuntimeData(
    themeMode: themeMode.value,
    locale: locale.value,
    initialRoute: initialRoute,
    extensions: extensions,
  );

  /// Retrieves the nearest [TapTestRuntime] instance from the widget tree.
  /// Will cause the calling widget to rebuild when the runtime data changes.
  static TapTestRuntimeData? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<TapTestRuntime>()?.data;

  /// Retrieves the nearest [TapTestRuntime] instance from the widget tree without listening.
  static TapTestRuntimeData? read(BuildContext context) =>
      context.getInheritedWidgetOfExactType<TapTestRuntime>()?.data;
}
