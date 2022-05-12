import 'package:flutter/material.dart';

import '../components/logo_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PUB DEV')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.done),
        onPressed: () {},
      ),
      body: Column(
        children: const [
          Text(
            'Bem-vindo ao Pub Dev',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('Bora testar esse Golden Test'),
          Logo(color: LogoColor.flutter),
          Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        ],
      ),
    );
  }
}
