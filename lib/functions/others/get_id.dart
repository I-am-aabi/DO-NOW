String getId(String date, String time) {
  String day = date.substring(0, 2);
  String month = date.substring(3, 5);
  String year = date.substring(6, 10);
  String str1 = time.substring(10, 15);
  String str2 = str1.replaceAll(':', '');
  String id = year + month + day + str2;
  return id;
}
