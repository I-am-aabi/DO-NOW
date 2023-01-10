import 'package:flutter_riverpod/flutter_riverpod.dart';

final statusProvider = StateProvider.autoDispose<String>((ref) => '');
final pageProvider = StateProvider.autoDispose<int>((ref) => 0);