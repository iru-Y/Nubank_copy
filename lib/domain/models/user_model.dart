class UserModel {
  int? id;
  String? name;
  String? password;
  String? email;
  String? accountBalance;

  UserModel({
    this.id,
    this.name,
    this.password,
    this.email,
    this.accountBalance,
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
      'id': id ?? 'Sem dados',
      'name': name ?? 'Sem dados',
      'password': password ?? 'Sem dados',
      'email': email ?? 'Sem dados',
      'accountBalance': accountBalance ?? 'Sem dados',
    };
  }
}
