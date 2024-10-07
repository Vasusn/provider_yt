import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_yt/Pages/home_page.dart';
import 'package:provider_yt/Provider/auth_provider.dart';
import 'package:provider_yt/Provider/count_provider.dart';
import 'package:provider_yt/Provider/favourite_provider.dart';
import 'package:provider_yt/Provider/slider_provider.dart';
import 'package:provider_yt/Provider/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CountProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => SliderProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => FavouriteProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => ThemeProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => AuthProvider(),
          )
        ],
        child: Builder(builder: (context) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
              title: 'Provider YT',
              themeMode: themeProvider.themeMode,
              theme: ThemeData(
                brightness: Brightness.light,
                useMaterial3: false,
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark,
                
              ),
              home: const HomePage());
        }));
  }
}
