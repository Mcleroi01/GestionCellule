import '../model/user/createUserRequest.dart';
import '../model/user/user.dart';

abstract class UserNetworkService{
  Future<String> createUser (CreateUserRequest Data);
  Future<User> getUser (String token);
  Future<User> UpdateUser (String token);
  Future<String> authenticate (data);
  Future<dynamic> updatePassword (token,data);
  Future<dynamic> requestPasswordReset (data);
  Future<dynamic> confirmResetPasswordOTPCode (data);


}