class Chat {
  final int id;
  final int senderId;
  final int unreadCount;
  final int interlocutorId;
  final String name;
  final String lastMessage;
  final String senderName;
  final String createdAt;
  final String updatedAt;
  final String avatarUrl;
  final ChatType type;
  final bool online;

  Chat({
    required this.name,
    required this.id,
    required this.interlocutorId,
    required this.lastMessage,
    required this.senderName,
    required this.senderId,
    required this.createdAt,
    required this.updatedAt,
    required this.avatarUrl,
    required this.unreadCount,
    required this.type,
    required this.online,
  });

  Chat copyWith({
    int? id,
    int? senderId,
    int? interlocutorId,
    int? unreadCount,
    String? name,
    String? lastMessage,
    String? senderName,
    String? createdAt,
    String? updatedAt,
    String? avatarUrl,
    ChatType? type,
    bool? online,
  }) {
    return Chat(
      online: online?? this.online,
      id: id ?? this.id,
      name: name ?? this.name,
      lastMessage: lastMessage ?? this.lastMessage,
      senderName: senderName ?? this.senderName,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      unreadCount: unreadCount ?? this.unreadCount,
      type: type ?? this.type,
      senderId: senderId ?? this.senderId,
      interlocutorId: interlocutorId ?? this.interlocutorId,
    );
  }

}

enum ChatType { group, direct }
