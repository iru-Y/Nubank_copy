class UserModel {
 final int? id;
 final String? name;
 final String? password;
 final String? email;
 final String? accountBalance;

  UserModel({
    required this.id,
    required this.name,
    required this.password,
    required this.email,
    required this.accountBalance,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? 'Sem dados',
      password: json['password'] ?? 'Sem dados',
      email: json['email'] ?? 'Sem dados',
      accountBalance: json['accountBalance'] ?? 'Sem dados',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id ?? 0,
      'name': name ?? 'Sem dados',
      'password': password ?? 'Sem dados',
      'email': email ?? 'Sem dados',
      'accountBalance': accountBalance ?? 'Sem dados',
    };
  }
}
