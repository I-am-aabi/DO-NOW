import 'package:hive/hive.dart';
part 'event_data_model.g.dart';

@HiveType(typeId: 2)
class eventModel {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String discription;

  @HiveField(2)
  final String location;

  @HiveField(3)
  final String date;

  @HiveField(4)
  final String category;

  @HiveField(5)
  final String time;

  @HiveField(6)
  final String status;

  @HiveField(7)
  final String path;

  eventModel(this.status,
      {required this.path,
      required this.discription,
      required this.location,
      required this.date,
      required this.category,
      required this.time,
      required this.id});
}
