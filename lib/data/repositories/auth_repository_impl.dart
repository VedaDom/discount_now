import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../app/core/error/exceptions.dart';
import '../../app/core/error/failures.dart';
import '../../app/core/platform/network_info.dart';
import '../../domain/repositories/auth_repository.dart';
import '../models/user_model.dart';
import '../providers/network/apis/authentication_api.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final NetworkInfo networkInfo;
  final AuthenticationRemoteDataSource api;

  AuthenticationRepositoryImpl({
    required this.networkInfo,
    required this.api,
  });

  @override
  Future<Either<Failure, UserModel>> getUser() async {
    if (await networkInfo.isConnected) {
      try {
        final uid = FirebaseAuth.instance.currentUser!.uid;
        final token = await FirebaseAuth.instance.currentUser!.getIdToken();
        var user = await api.getUser(token, uid);
        //
        //  Store data locally
        //
        if (user != null) {
          return Right(user);
        }
        return Left(ServerFailure());
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        //
        //  Get local data
        //
        // final user = UserModel.fromMap({});
        // return Right(user);
        return Left(CacheFailure());
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, UserModel>> signinWithEmailAndPassword(
    String email,
    String password,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final credential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        final token = await credential.user!.getIdToken();
        var user = await api.getUser(token, credential.user!.uid);
        //
        //  Store data locally
        //
        if (user != null) {
          return Right(user);
        }
        return Left(ServerFailure());
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        //
        //  Get local data
        //
        // final user = UserModel.fromMap({});
        // return Right(user);
        return Left(CacheFailure());
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, UserModel>> createUserProfile({
    String? email,
    String? phone,
    String? picture,
    required String firstName,
    required String lastName,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final token = await FirebaseAuth.instance.currentUser!.getIdToken();
        final user = await api.register(
          token,
          email,
          phone,
          picture,
          firstName,
          lastName,
        );
        //
        //  Store data locally
        //
        return Right(user);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        return Right(true);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, UserModel>> updateProfile(
      {required UserModel userModel}) async {
    if (await networkInfo.isConnected) {
      try {
        final token = await FirebaseAuth.instance.currentUser!.getIdToken();
        final updatedUser = await api.updateProfile(token, userModel);
        //
        //  Store data locally
        //
        return Right(updatedUser);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}
