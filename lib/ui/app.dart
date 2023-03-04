import 'package:flutter/material.dart';
import 'package:prepared_flutter_project/assets/theme/app_theme.dart';
import 'package:prepared_flutter_project/ui/home_screen/home_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      /// Theme configuration.
      theme: AppTheme.light().themeData,
      darkTheme: AppTheme.dark().themeData,
      themeMode: ThemeMode.light,

      home: const HomeScreen(),
    );
  }
}
