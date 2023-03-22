import 'package:flutter_riverpod/flutter_riverpod.dart';

/// [Application Layer]
///
/// Base Service class for "use cases".
class Service {
  final Ref ref;
  Service(this.ref);
}
