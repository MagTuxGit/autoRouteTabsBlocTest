import 'package:auto_route_test/data/services/prefs_service.dart';
import 'package:auto_route_test/data/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DependencyTree extends StatelessWidget {
  final Widget child;

  const DependencyTree(this.child, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiProvider(
    child: child,
    providers: [
      Provider<PrefsService>(create: (context) => PrefsService()),
      ProxyProvider<PrefsService, UserService>(
          update: (context, prefs, previous) =>
          previous ?? UserService(prefs),
          dispose: (context, service) => service.dispose()),
    ],
  );
}
