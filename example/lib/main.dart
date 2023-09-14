import 'package:badword_guard/badword_guard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final LanguageChecker checker = LanguageChecker();
  final TextEditingController textController = TextEditingController();
  String resultText = "";
  String filteredText = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bad Word Filter plugin'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: textController,
                decoration: const InputDecoration(
                  labelText: 'Enter text',
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _checkAndFilterText,
                child: const Text('Check & Filter'),
              ),
              const SizedBox(height: 16),
              if (resultText.isNotEmpty) Text(resultText),
              const SizedBox(height: 8),
              if (filteredText.isNotEmpty) Text('Filtered: $filteredText'),
            ],
          ),
        ),
      ),
    );
  }

  void _checkAndFilterText() {
    String inputText = textController.text;
    bool containsBadWord = checker.containsBadLanguage(inputText);

    setState(() {
      resultText = containsBadWord
          ? 'The text contains inappropriate language.'
          : 'The text is clean.';
      filteredText = checker.filterBadWords(inputText);
    });
  }
}
