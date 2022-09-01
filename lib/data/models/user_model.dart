import '../../domain/entities/user.dart';

class UserModel extends User {
  UserModel({
    required String id,
    required String firstName,
    required String lastName,
    String? phone,
    String? email,
    String? address,
    String? city,
    String? country,
    String? picture,
  }) : super(
          id: id,
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          email: email,
          address: address,
          city: city,
          country: country,
          picture: picture,
        );

  UserModel copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? phone,
    String? email,
    String? address,
    String? city,
    String? country,
    String? picture,
  }) =>
      UserModel(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        address: address ?? this.address,
        city: city ?? this.city,
        country: country ?? this.country,
        picture: picture ?? this.picture,
      );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        phone: json["phone"],
        email: json["email"],
        address: json["address"],
        city: json["city"],
        country: json["country"],
        picture: json["picture"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "phone": phone,
        "email": email,
        "address": address,
        "city": city,
        "country": country,
        "picture": picture,
      };
}
