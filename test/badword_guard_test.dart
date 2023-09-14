import 'package:test/test.dart';
import 'package:badword_guard/badword_guard.dart';

void main() {
  group('LanguageChecker', () {
    late LanguageChecker checker;

    setUp(() {
      checker = LanguageChecker();
    });

    test('containsBadLanguage returns true for input with bad language', () {
      expect(
          checker.containsBadLanguage('This message contains a bad word: shit'),
          isTrue);
    });

    test('containsBadLanguage returns false for input without bad language',
        () {
      expect(checker.containsBadLanguage('This message is clean'), isFalse);
    });

    test('filterBadWords replaces bad words with asterisks', () {
      expect(checker.filterBadWords('This message contains a bad word: shit'),
          equals('This message contains a bad word: ****'));
    });

    test('filterBadWords does not replace words that contain bad words', () {
      expect(
          checker.filterBadWords('This message contains a bad word: shithole'),
          equals('This message contains a bad word: shithole'));
    });

    test('filterBadWords does not modify input without bad words', () {
      expect(checker.filterBadWords('This message is clean'),
          equals('This message is clean'));
    });
  });
}
