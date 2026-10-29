import 'package:http/http.dart' as http;

class ApiCall {
  fetchQuote() async {
    var request = http.Request(
      'GET',
      Uri.parse('https://dummyjson.com/quotes/random'),
    );

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
}
