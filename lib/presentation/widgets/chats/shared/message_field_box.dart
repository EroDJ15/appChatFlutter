import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final OutlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(15.0));

    final inputDecoration = InputDecoration(
        hintText: 'Escribe un mensaje',
        enabledBorder: OutlineInputBorder,
        focusedBorder: OutlineInputBorder,
        filled: true,
        fillColor: Colors.white,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {
            final textValue = textController.value.text;
            print('button:$textValue');
            textController.clear();
          },
        ));

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Submit value $value');
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
