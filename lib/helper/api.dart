import 'package:http/http.dart' as http;

class Api {
  Future<http.Response> get({required String myurl}) async {
    http.Response response = await http.get(Uri.parse(myurl));

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('There is a problem with the status code');
    }
  }
}
