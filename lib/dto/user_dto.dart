class UserDto 
{
  final int id;
  final String fullname;
  final String email;
  final String entreprise;

  UserDto({required this.id, required this.fullname, required this.email, required this.entreprise});

  factory UserDto.fromJson(Map<String, dynamic> json) {
  return UserDto(
    id: json['id'],
    fullname: json['fullname'],
    email: json['email'],
    entreprise: json['entreprise'],
  );
}
 Map<String, dynamic> toJson() {
  return {
    'id': id,
    'fullname': fullname,
    'email': email,
    'entreprise': entreprise,
  };
}
}