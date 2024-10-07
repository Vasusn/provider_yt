import 'package:flutter/material.dart';
import 'package:provider_yt/Pages/counter_example.dart';
import 'package:provider_yt/Pages/counter_stareless.dart';
import 'package:provider_yt/Pages/dark_light_theme.dart';
import 'package:provider_yt/Pages/fav_screen.dart';
import 'package:provider_yt/Pages/login_screen.dart';
import 'package:provider_yt/Pages/slider_example.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Provider Example",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyBtn(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CounterExample()));
              },
              text: "Counter Example",
            ),
            const SizedBox(height: 20,),
             MyBtn(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SliderExample()));
              },
              text: "Slider Example",
            ),
            const SizedBox(height: 20,),
             MyBtn(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FavouriteScreen()));
              },
              text: "Favourite Screen",
            ),
            const SizedBox(height: 20,),
             MyBtn(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DarkLightTheme()));
              },
              text: "Theme Changer",
            ),
            const SizedBox(height: 20,),
             MyBtn(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  CounterStareless()));
              },
              text: "Counter Starless",
            ),
            const SizedBox(height: 20,),
             MyBtn(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  const LoginScreen()));
              },
              text: "Login Screen",
            ),
          ],
        ),
      ),
    );
  }
}

class MyBtn extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const MyBtn({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // Button background color
        padding: const EdgeInsets.symmetric(
            horizontal: 32.0, vertical: 12.0), // Button padding
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0), // Rounded corners
        ),
        elevation: 5, // Shadow elevation
        shadowColor: Colors.black, // Shadow color
      ),
      child:  Text(
        text,
        style: const TextStyle(
          fontSize: 18, // Text size
          fontWeight: FontWeight.bold, // Bold text
          color: Colors.white, // Text color
        ),
      ),
    );
  }
}
