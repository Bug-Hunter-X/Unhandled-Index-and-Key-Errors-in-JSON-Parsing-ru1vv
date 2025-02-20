```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;
      for (var item in data) {
        // Check if the keys exist before accessing them
        if (item is Map && item.containsKey('nonExistentField') && item.containsKey('anotherField')) {
          print(item['nonExistentField']);
          print(item['anotherField']);
        } else {
          print('Missing keys in JSON element');
        }
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```