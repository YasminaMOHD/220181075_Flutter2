import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation_drawer_example/widget/navigation_drawer_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'SECONED ASSEMENT';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        home: MainPage(),
        theme:
            ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 141, 13, 4)),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: NavigationDrawerWidget(),
      // endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text(MyApp.title),
        backgroundColor: Colors.purple,
      ));
}
