class AppUser {
  final String id;
  final String email;
  final String name;

  AppUser({required this.id, required this.email, required this.name});

  Map<String, dynamic> toMap(AppUser user) {
    return {'id': user.id, 'email': user.email, 'name': user.name};
  }

  factory AppUser.fromMap(Map<String, dynamic> jsonUser) {
    return AppUser(
      id: jsonUser['id'],
      email: jsonUser['email'],
      name: jsonUser['name'],
    );
  }
}
