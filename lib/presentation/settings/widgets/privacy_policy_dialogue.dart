import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PrivacyDialogue extends StatelessWidget {
  const PrivacyDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        children: [
          FutureBuilder(
            future:
                Future.delayed(const Duration(microseconds: 200)).then((value) {
              return rootBundle.loadString('assets/privacy_policy.md');
            }),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Expanded(child: Markdown(data: snapshot.data!));
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('close')),
        ],
      ),
    );
  }
}
