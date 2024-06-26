import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final characters = data['results'] as List<dynamic>;

      for (var character in characters) {
        print(character['name']);
      }
    } else {
      throw Exception('Failed to load characters');
    }
  } catch (error) {
    print('error caught: $error');
  }
}