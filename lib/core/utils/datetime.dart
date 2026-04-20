class DateTimeUtil {
  static String getCurrentDate() {
    final DateTime currentDate = DateTime.now();
    return "${getMonth(currentDate.month)} ${currentDate.day.toString().length < 2 ? 0 : ""}${currentDate.day}";
  }

  static String getMonth(int monthNumber) {
    String month = "";
    switch (monthNumber) {
      case 1:
        month = "Jan";
        break;
      case 2:
        month = "Feb";
        break;
      case 3:
        month = "Mar";
        break;
      case 4:
        month = "Apr";
        break;
      case 5:
        month = "May";
        break;
      case 6:
        month = "Jun";
        break;
      case 7:
        month = "Jul";
        break;
      case 8:
        month = "Aug";
        break;
      case 9:
        month = "Sep";
        break;
      case 10:
        month = "Oct";
        break;
      case 11:
        month = "Nov";
        break;
      case 12:
        month = "Dec";
        break;
      default:
        month = "";
    }
    return month;
  }
}
