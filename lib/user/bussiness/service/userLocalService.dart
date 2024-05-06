import 'package:gestion_celluleeglise/user/bussiness/model/user/user.dart';

abstract class UserLocalService{
  Future<dynamic> saveUser (user);
  Future<dynamic> saveToken (user);

  Future<User> getUser ();
  Future<User> getToken ();

  Future<dynamic> disconnect ();

}