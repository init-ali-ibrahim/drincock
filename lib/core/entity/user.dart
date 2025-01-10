class User {
  final int userId;
  final int? userChatId;
  final String firstName;
  final String middleName;
  final String lastName;
  final String phoneNumber;
  final String email;
  final String pictureUrl;

  User({
    required this.userId,
    required this.userChatId,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
    required this.pictureUrl,
  });
}
