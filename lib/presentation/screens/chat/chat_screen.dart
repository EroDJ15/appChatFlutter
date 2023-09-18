import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chats/shared/message_field_box.dart';
import 'package:yes_no_app/presentation/widgets/my_message_bubble.dart';
import '../../widgets/chats/her_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/1640744433644716032/u3GKeG_l_400x400.jpg'),
          ),
        ),
        title: const Text("Zaraki Kempachi 🤺"),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return (index % 2==0)
                      ? const HerMessageBubble()
                      : const MyMessageBubble();
                    })),
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
