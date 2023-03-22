import 'package:bubba/routing/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// [Presentation Layer]
///
/// Simple wrapper around StateNotifier.
class Controller extends StateNotifier<AsyncValue<void>> {
  Controller() : super(const AsyncData(null));
  final context = globalContext();
}
