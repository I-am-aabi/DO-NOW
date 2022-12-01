import 'package:hive_flutter/adapters.dart';
import 'package:project1/Database/Models/date_model/date_data_mode.dart';

Future<String> dateInfo(String id) async {
  final dateDB = await Hive.openBox<DATAMODE>('data_DB');
  String date = id.substring(0, 8);
  print('biginig$date');
  List<DATAMODE> datelist = dateDB.values.toList(growable: true);
  for (int i = 0; i <= datelist.length - 1; i++) {
    if (date == datelist[i].date) {
      print(datelist[i].date);
      return '';
    }
  }
  final newdate = DATAMODE(date);
  dateDB.add(newdate);
  print('end$date');
  return date;
}
