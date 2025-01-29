```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200 && response.headers['content-type']!.contains('application/json')) {
      try {
        final data = jsonDecode(response.body);
        // ... process data ...
      } on FormatException {
        print('Invalid JSON response');
        // Handle malformed JSON
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode} - ${response.body}');
    }
  } catch (e) {
    // ... handle error ...
    print('Error fetching data: $e');
  }
}
```