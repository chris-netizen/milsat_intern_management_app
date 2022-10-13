import 'package:flutter/material.dart';

@immutable
class MessageData {
  final String senderName;
  final DateTime messageDate;
  final String profilePicture;
  final String message;
  final String dateMessage;

  const MessageData({
    required this.senderName,
    required this.messageDate,
    required this.profilePicture,
    required this.message,
    required this.dateMessage,
  });
}
