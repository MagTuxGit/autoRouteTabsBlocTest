import 'package:auto_route_test/data/app_state.dart';
import 'package:auto_route_test/dependency_tree.dart';
import 'package:auto_route_test/routes/post_guard.dart';
import 'package:auto_route_test/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const DependencyTree(AppWidget()));

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  late AppState _appState;

  final _appRouter = AppRouter(postGuard: PostGuard());

  @override
  void initState() {
    super.initState();
    _appState = AppState(context.read(), _appRouter);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppState>(
      create: (_) => _appState,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Auto Route Test',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
