List datelist = [];

bool dateInfo(String date) {
  List datelists = datelist;
  for (int i = 0; i <= datelists.length - 1; i++) {
    if (date == datelists[i]) {
      return false;
    }
  }
  datelist.add(date);
  return true;
}
