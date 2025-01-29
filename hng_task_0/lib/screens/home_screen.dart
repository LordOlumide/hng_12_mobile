import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _projectGithubUrl = Uri.parse(
    'https://github.com/LordOlumide/hng_12_mobile/tree/main/hng_task_0');
final Uri _hngHirePageUrl =
    Uri.parse('https://hng.tech/hire/flutter-developers');
final Uri _telexUrl = Uri.parse('https://telex.im/');
final Uri _delveUrl = Uri.parse('https://delve.fun/');

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 20,
        backgroundColor: Colors.blue,
        title: const Text(
          'Task 0',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Click these links!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => _launchUrl(_projectGithubUrl),
              child: const Text('Github Repo'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _launchUrl(_hngHirePageUrl),
              child: const Text('HNG Hire Page URL'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _launchUrl(_telexUrl),
              child: const Text('Telex'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _launchUrl(_delveUrl),
              child: const Text('Delve'),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
