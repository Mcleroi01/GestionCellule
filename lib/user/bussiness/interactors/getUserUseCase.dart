import 'package:gestion_celluleeglise/user/bussiness/service/userNetWorkService.dart';

class GetUserUseCase{
  UserNetworkService service;

  GetUserUseCase({
    required  this.service
  });

  Future <dynamic> run (data){
    return service.getUser(data);
  }
}