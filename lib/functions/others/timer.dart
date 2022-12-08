setTimer() {
  String timenow = DateTime.now().toString();
  String year = timenow.substring(0, 4);
  String month = timenow.substring(5, 7);
  String day = timenow.substring(8, 10);
  String hour = timenow.substring(11, 13);
  String minute = timenow.substring(14, 16);
  print(year + month + day+hour+minute);
}
