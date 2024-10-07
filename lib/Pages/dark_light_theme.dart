import 'package:flutter/material.dart';
import 'package:provider_yt/Provider/theme_provider.dart';
import 'package:provider/provider.dart';

class DarkLightTheme extends StatefulWidget {
  const DarkLightTheme({super.key});

  @override
  State<DarkLightTheme> createState() => _DarkLightThemeState();
}

class _DarkLightThemeState extends State<DarkLightTheme> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dark Light Theme",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          RadioListTile(
            title: const Text("Light Theme"), 
            value: ThemeMode.light,
            groupValue: themeProvider.themeMode,
            onChanged: themeProvider.setTheme,
          ),
          RadioListTile(
            title: const Text("Dark Theme"), 
            value: ThemeMode.dark,
            groupValue: themeProvider.themeMode,
            onChanged: themeProvider.setTheme,
          ),
          RadioListTile(
            title: const Text("System Theme"), 
            value: ThemeMode.system,
            groupValue: themeProvider.themeMode,
            onChanged: themeProvider.setTheme,
          ),
        ],
      ),
    );
  }
}
