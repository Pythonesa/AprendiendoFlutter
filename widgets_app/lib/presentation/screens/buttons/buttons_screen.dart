// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Botones'),
        ),
        body: const _ButtonsView(),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ));
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated Disabled'),
            ),
            ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.access_alarm_rounded), label: const Text('Elevated Icon')),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            const FilledButton(onPressed: null, child: Text('Filled Disabled')),
            FilledButton.icon(onPressed: () {}, icon: const Icon(Icons.accessibility_new), label: const Text('Filled Icon')),
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            const OutlinedButton(onPressed: null, child: Text('Outlined Disabled')),
            OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.ac_unit_rounded), label: const Text('Outlined Icon')),
            TextButton(onPressed: () {}, child: const Text('Text')),
            const TextButton(onPressed: null, child: Text('Text Disabled')),
            TextButton.icon(onPressed: () {}, icon: const Icon(Icons.abc_rounded), label: const Text('Text Icon')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.account_balance_outlined)),
            const IconButton(onPressed: null, icon: Icon(Icons.account_balance_outlined)),
            IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.account_balance_outlined),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) => colors.primary), 
                foregroundColor: MaterialStateProperty.resolveWith((states) => colors.onPrimary),
              ),
            ),
            
            const CustomButton(),
            
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text('Hola Mundo', style: TextStyle(color: colors.onPrimary)),
          ),
        ),
      ),
    );
  }
}