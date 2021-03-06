import 'package:flutter/material.dart';

import 'chat_message.dart';

class ChatList extends StatelessWidget {

  final List<Map<String, dynamic>> snapshots;

  const ChatList({Key key, this.snapshots}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        padding: EdgeInsets.all(8.0),
        reverse: true,
        itemCount: snapshots.length,
        itemBuilder: (_, int index) =>ChatMessage(
              snapshot: snapshots[index],
            ),
      ),
    );
  }
}
