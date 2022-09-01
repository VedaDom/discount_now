class User {
  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.phone,
    this.email,
    this.postalCode,
    this.address,
    this.city,
    this.country,
    this.dateOfBirth,
    this.picture,
    this.nationalIdFront,
    this.nationalIdBack,
    this.passport,
    this.driverLicenseFront,
    this.driverLicenseBack,
    this.isVerified = false,
  });

  final String id;
  final String firstName;
  final String lastName;
  final String? phone;
  final String? email;
  final String? postalCode;
  final String? address;
  final String? city;
  final String? country;
  final String? dateOfBirth;
  final String? picture;
  final String? nationalIdFront;
  final String? nationalIdBack;
  final String? passport;
  final String? driverLicenseFront;
  final String? driverLicenseBack;
  final bool isVerified;
}
