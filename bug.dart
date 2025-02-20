```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON list
      final data = jsonDecode(response.body) as List<dynamic>;
      // Accessing elements that might not exist
      print(data[0]['nonExistentField']); // Potential error here
      print(data[100]['anotherField']); // Potential error here
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```