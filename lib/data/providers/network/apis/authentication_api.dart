import 'package:get/get.dart';
import '../../../../app/core/error/exceptions.dart';
import '../../../models/user_model.dart';
import '../api_endpoint.dart';

abstract class AuthenticationRemoteDataSource {
  /// Call the ***/register endpint to Register a new user using the provided [names], [email] and [password]
  ///
  /// Throws a [ServerException] for all error codes
  Future<UserModel> register(
    String token,
    String? email,
    String? phone,
    String? picture,
    String firstName,
    String lastName,
  );

  /// Call the ***/login endpint to Login a user using their [email] and [password]
  ///
  /// Throws a [ServerException] for all error codes
  Future<UserModel?> getUser(String token, String uid);

  /// Call the ***/login endpint to Login a user using their [email] and [password]
  ///
  /// Throws a [ServerException] for all error codes
  Future<UserModel> updateProfile(String token, UserModel user);
}

class AuthenticationRemoteDataSourceImpl extends GetConnect
    implements AuthenticationRemoteDataSource {
  @override
  void onInit() {
    httpClient.baseUrl = APIEndpoint.host;
    httpClient.defaultContentType = 'application/json';
    super.onInit();
  }

  @override
  Future<UserModel?> getUser(String token, String uid) async {
    final response = await get(
      "/users-api/profile",
      headers: {
        "Authorization": token,
      },
    );
    if (response.statusCode == 200) {
      if (response.body == null) return null;
      return UserModel.fromJson(response.body);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<UserModel> register(
    String token,
    String? email,
    String? phone,
    String? picture,
    String firstName,
    String lastName,
  ) async {
    final response = await post("/users-api/profile", {
      "email": email,
      "phone": phone,
      "firstName": firstName,
      "lastName": lastName,
      "picture": picture,
      "isVerified": false,
      "postalCode": null,
      "address": null,
      "city": null,
      "country": null,
      "dateOfBirth": null,
      "nationalIdFront": null,
      "nationalIdBack": null,
      "passport": null,
      "driverLicenseFront": null,
      "driverLicenseBack": null
    }, headers: {
      "Authorization": token
    });
    if (response.statusCode == 201) {
      return UserModel.fromJson(response.body);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<UserModel> updateProfile(String token, UserModel user) async {
    final response = await put(
      "/users-api/profile",
      user.toJson(),
      headers: {"Authorization": token},
    );
    if (response.statusCode == 200) {
      return UserModel.fromJson(response.body);
    } else {
      throw ServerException();
    }
  }
}
