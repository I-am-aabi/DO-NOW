import 'package:flutter_riverpod/flutter_riverpod.dart';

final eventCategoryProvider = StateProvider.autoDispose<String>((ref) => '');
final eventImageProvider = StateProvider.autoDispose<String>((ref) => '');
