import 'package:flutter/material.dart';

class ThemeChange extends StatelessWidget {
  ThemeChange({Key? key}) : super(key: key);

  ValueNotifier<ThemeMode> toggle = ValueNotifier<ThemeMode>(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    print('build');
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: toggle,
      builder: (context,value,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: value,
          home: Scaffold(
            appBar: AppBar(
              title: Text('Theme changer'),
            ),
            body: Center(
              child: ElevatedButton(
                child: Text('Change Theme'),
                onPressed: () {
                  toggle.value = value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
