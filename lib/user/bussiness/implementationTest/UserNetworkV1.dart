import 'package:gestion_celluleeglise/user/bussiness/model/user/createUserRequest.dart';
import 'package:gestion_celluleeglise/user/bussiness/model/user/user.dart';
import 'package:gestion_celluleeglise/user/bussiness/service/userNetWorkService.dart';

class UserNetworkV1b implements UserNetworkService{
  @override
  Future<User> UpdateUser(String token) {
    // TODO: implement UpdateUser
    throw UnimplementedError();
  }

  @override
  Future<String> authenticate(data) {
    // TODO: implement authenticate
    throw UnimplementedError();
  }

  @override
  Future confirmResetPasswordOTPCode(data) {
    // TODO: implement confirmResetPasswordOTPCode
    throw UnimplementedError();
  }

  @override
  Future<String> createUser(CreateUserRequest Data) {
    print("create user V1");
    return Future.value('helllooooo');
  }

  @override
  Future<User> getUser(String token) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future requestPasswordReset(data) {
    // TODO: implement requestPasswordReset
    throw UnimplementedError();
  }

  @override
  Future updatePassword(token, data) {
    // TODO: implement updatePassword
    throw UnimplementedError();
  }

}