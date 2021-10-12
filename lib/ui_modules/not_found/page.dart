import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          leading: const AutoBackButton(),
        ),
        body: const Center(child: Text('Page not found')));
  }
}
