import 'package:http/http.dart' as http;  // Ensure this import is present

class ApiService {
  final String apiUrl = 'https://api.jsonserve.com/Uw5CrX';  // Replace with your actual API URL

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));  // This should work after adding 'http' package
      if (response.statusCode == 200) {
        // Handle the response
        print('Data fetched successfully');
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
