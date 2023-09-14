
# BadWord Guard - A Flutter Package for Bad Text Word Moderation


![Flutter](https://img.shields.io/badge/Flutter-%5E3.13.3-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

BadWord Guard is a Flutter package that allows you to easily detect and filter out offensive language and bad words in text input. It helps you maintain a safe and respectful user environment by scanning and sanitizing user-generated content within your Flutter applications.

## Features

- Detect and Highlight Bad Words: Easily identify and highlight offensive words and phrases within user-generated text.
- Replace Bad Words: Automatically replace bad words with customizable alternatives or censor characters to keep your content clean.
- Customizable Filtering: Configure the plugin to match your content guidelines with customizable word lists and replacement options.
- Real-time Processing: Perform real-time checks on user input to prevent inappropriate content from being displayed or submitted.

## Installation

1. Add this package to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     badword_guard: ^1.0.0
   ```

2. Run `flutter pub get` to install the package.

## Usage

```dart
import 'package:badword_guard/badword_guard.dart';

void main() {
  final LanguageChecker checker = LanguageChecker();
  String inputText = "This is a sample text with a bad word: ****!";
  
  bool containsBadWord = checker.containsBadLanguage(inputText);
  print(containsBadWord); // Output: true
  
  String filteredText = checker.filterBadWords(inputText);
  print(filteredText); // Output: "This is a sample text with a bad word: ****!"
}
```

For more detailed usage and customization options, please refer to the [documentation](https://pub.dev/packages/badword_guard).

## Contributing

We welcome contributions! If you have any ideas, bug fixes, or improvements, please open an issue or submit a pull request on our [GitHub repository](https://github.com/xeron56/badword_guard).

## License

This package is available under the MIT License. See the [LICENSE](LICENSE) file for more details.

## About

This package is developed and maintained by [MD. SHAHIDUL ISLAM](https://github.com/xeron56).

If you have any questions or need assistance, feel free to contact us at [shahidul1425@cseku.ac.bd](mailto:shahidul1425@cseku.ac.bd).
