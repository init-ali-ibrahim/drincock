class Message {
  final String text;
  final int chatId;
  final bool isMe;
  final String name;
  final String avatarUrl;
  final String timestamp;
  final Message? replyTo;

  Message({
    required this.chatId,
    required this.isMe,
    required this.text,
    required this.name,
    required this.avatarUrl,
    required this.timestamp,
    this.replyTo,
  });
}
