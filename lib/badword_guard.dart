import 'dart:convert';

import 'worddata.dart';

class LanguageChecker {
  late final List<String> _badWords;

  LanguageChecker() {
    _badWords = _decodeBadWords();
  }

  List<String> _decodeBadWords() {
    var decoded = utf8.decode(base64.decode(badwordlist));
    return decoded.split('\n');
  }

  bool containsBadLanguage(String input) {
    for (var badWord in _badWords) {
      if (_containsExactWord(input, badWord)) {
        return true;
      }
    }
    return false;
  }

  String filterBadWords(String input) {
    String result = input;

    for (var badWord in _badWords) {
      result = result.replaceAllMapped(
        RegExp(r'\b' + RegExp.escape(badWord) + r'\b', caseSensitive: false),
        (match) => '*' * match.group(0)!.length,
      );
    }

    return result;
  }

  bool _containsExactWord(String input, String word) {
    final regex =
        RegExp(r'\b' + RegExp.escape(word) + r'\b', caseSensitive: false);
    return regex.hasMatch(input);
  }
}
