import 'package:hive_flutter/adapters.dart';
part 'date_data_mode.g.dart';
@HiveType(typeId: 3)
class DATAMODE {
  @HiveField(0)
  final String date;
  DATAMODE(this.date);
}
