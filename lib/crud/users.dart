// part 'users.g.dart';

class user {
  final String email;

  final String username;

  final String password;

  final String firstname;

  final String middlename;

  final String lastname;

  final String address;

  final String gender;

  final String dateofbirth;

  user(
      {required this.email,
      required this.username,
      required this.password,
      required this.firstname,
      required this.middlename,
      required this.lastname,
      required this.address,
      required this.gender,
      required this.dateofbirth});
}
