import 'package:hive/hive.dart';
part 'task_data_model.g.dart';

@HiveType(typeId: 1)
class TaskModel {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String discription;

  @HiveField(2)
  final String location;

  @HiveField(3)
  final String date;

  @HiveField(4)
  final int category;

  @HiveField(5)
  final String time;

  @HiveField(6)
  final int status;
  TaskModel(this.status, 
      {required this.discription,
      required this.location,
      required this.date,
      required this.category,
      required this.time, 
      required this.id});
}
