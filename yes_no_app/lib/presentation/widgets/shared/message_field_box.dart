import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;

  const MessageFieldBox({
    super.key,
    required this.onValue,
  });

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(color:colors.primary),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
        hintText: 'Termina tu mensaje con un "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.text;
            onValue(textValue);
            focusNode.requestFocus();
            textController.clear();

          },
        ));

    return TextFormField(
      onTapOutside: (_) => focusNode.unfocus(),
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        onValue(value);
        focusNode.requestFocus();
        textController.clear();
      },
    );
  }
}
