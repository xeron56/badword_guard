import 'package:badword_guard/badword_guard.dart';

void main() {
  final LanguageChecker checker = LanguageChecker();
  String inputText = "This is a sample text with a bad word: ****!";

  bool containsBadWord = checker.containsBadLanguage(inputText);
  print(containsBadWord); // Output: true

  String filteredText = checker.filterBadWords(inputText);
  print(filteredText); // Output: "This is a sample text with a bad word: ****!"
}
