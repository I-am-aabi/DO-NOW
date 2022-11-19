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
  final String datetime;

  @HiveField(4)
  final int category;

  TaskModel(
      {required this.discription,
      required this.location,
      required this.datetime,
      required this.category,
      required this.id});
}
