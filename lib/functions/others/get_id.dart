String getId(String date, String time) {
  // print(date);
  String day = date.substring(0, 2);
  String month = date.substring(3, 5);
  String year = date.substring(6, 10);
  String str1 = time.replaceAll(' ', '');
  String str2 = str1.replaceAll(':', '');
  str1 = str2.replaceAll('AM', '1');
  str2 = str1.replaceAll('PM', '10');
  String id = year + month + day + str2;
  // print(id);
  return id;
}
