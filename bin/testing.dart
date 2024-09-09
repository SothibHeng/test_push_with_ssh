import 'package:http/http.dart' as http; // this dependencies is require when working with http request
import 'dart:convert';  // this is use to convert data that response from API as JSON

Future<void> fetchData() async {

  final url = Uri.parse('');

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      print(data);
    } else {
      print('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('An error occurred: $e');
  }
}


