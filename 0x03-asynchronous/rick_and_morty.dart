import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    String baseUrl = 'https://rickandmortyapi.com/api/character';
    List<String> allCharacters = [];

    while (baseUrl != null) {
      final response = await http.get(Uri.parse(baseUrl));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final characters = data['results'] as List<dynamic>;

        for (var character in characters) {
          allCharacters.add(character['name']);
        }

        baseUrl = data['info']['next'];
      } else {
        throw Exception('Failed to load characters');
      }
    }

    for (var name in allCharacters) {
      print(name);
    }
  } catch (error) {
    print('error caught: $error');
  }
}
