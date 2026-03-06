class AppUser {
  final String id;
  final String email;

  AppUser({required this.id, required this.email});

  Map<String, dynamic> toMap(AppUser user) {
    return {'id': user.id, 'email': user.email};
  }

  factory AppUser.fromMap(Map<String, dynamic> jsonUser) {
    return AppUser(id: jsonUser['id'], email: jsonUser['email']);
  }
}
