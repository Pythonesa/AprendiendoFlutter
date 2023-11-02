import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Functions', style: TextStyle(fontSize: 36, color: Colors.deepPurpleAccent)),
          leading: const Icon(Icons.insights, size: 36, color: Colors.deepPurpleAccent), 
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded, size: 36, color: Colors.deepPurpleAccent),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              clickCounter.toString(),
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              (clickCounter == 1) ? 'Click' : 'Clicks',
              style: const TextStyle(fontSize: 25),
            )
          ],
        )),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(Icons.plus_one_outlined, () {
              setState(() {
                clickCounter++;
              });
            }),
            const SizedBox(height: 10),
            CustomButton(Icons.exposure_minus_1_outlined, () {
              setState(() {
                if (clickCounter == 0) return;
                clickCounter--;
              });
            }),
            const SizedBox(height: 10),
            CustomButton(Icons.refresh_outlined, () {
              setState(() {
                clickCounter = 0;
              });
            })
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton(
    this.icon,
    this.onPressed, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon)
    );
  }
}
