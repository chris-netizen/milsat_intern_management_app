import 'package:flutter/material.dart';

import '../../files.dart';

class MessagePage extends StatelessWidget {
  static Route route(MessageData data) => MaterialPageRoute(
        builder: (context) => MessagePage(
          messageData: data,
        ),
      );
  const MessagePage({
    super.key,
    required this.messageData,
  });

  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [],
        ),
      ),
    );
  }
}
