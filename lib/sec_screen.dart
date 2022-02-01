import 'package:flutter/material.dart';

class SecPage extends MaterialPageRoute {
  SecPage()
      : super(
          builder: (context) => Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: true,
              title: const Text('Setting'),
            ),
            body: SecScreen(),
          ),
        );
}

class SecScreen extends StatefulWidget {
  SecScreen({Key? key}) : super(key: key);

  @override
  State<SecScreen> createState() => _SecScreenState();
}

class _SecScreenState extends State<SecScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
