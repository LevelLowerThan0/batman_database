import 'dart:convert';
import 'package:http/http.dart' as http;

class DataFetcher {
  static const String url =
      'http://www.omdbapi.com/?s=Batman&page=1&apikey=2edf03f5';
  static var data;

  static fetchData() async {
    var req = await http.get(Uri.parse(url));
    data = json.decode(req.body)['Search'];
    sortItems();
    return data;
  }

  static sortItems() {
    data.sort((a, b) {
      int value_1 = int.parse(a['Year'].substring(0, 4));
      int value_2 = int.parse(b['Year'].substring(0, 4));

      if (value_1 < value_2) {
        return 1;
      } else if (value_1 > value_2) {
        return -1;
      } else {
        return 1;
      }
    });
  }
}
