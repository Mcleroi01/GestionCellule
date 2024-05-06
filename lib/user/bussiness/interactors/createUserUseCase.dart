import 'package:gestion_celluleeglise/user/bussiness/service/userNetWorkService.dart';

class createUserUseCase{
  UserNetworkService service;

  createUserUseCase({
    required this.service
});

  Future<dynamic> run(Data){
    return service.createUser(Data);

  }
}