import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_proviter/proviter_theme.dart';
import 'package:theme_proviter/sec_screen.dart';
import 'package:theme_proviter/theme_model.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  runApp(
    MyApp(),
  );
}

ThemeManager _thtmeManager = ThemeManager();

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    _thtmeManager.removeListener(themelistener);
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    _thtmeManager.addListener(themelistener);

    // TODO: implement initState
    super.initState();
  }

  themelistener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _thtmeManager.themeMode,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(children: [
          Container(
            child: Text('Hello World'),
          ),
          Switch(
              value: _thtmeManager.themeMode == ThemeMode.dark,
              onChanged: (themevalue) {
                _thtmeManager.toggleTheme(themevalue);
              }),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(SecPage());
              },
              child: Text('Next >>'))
        ]),
      ),
    );
  }
}
