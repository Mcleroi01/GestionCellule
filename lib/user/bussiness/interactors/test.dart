import 'package:gestion_celluleeglise/user/bussiness/implementationTest/UserNetworkV1.dart';
import 'package:gestion_celluleeglise/user/bussiness/interactors/createUserUseCase.dart';
import 'package:gestion_celluleeglise/user/bussiness/model/user/createUserRequest.dart';

void main (){

  var Service= UserNetworkV1b();
  var usecase= createUserUseCase(service: Service);

  print("formulaire");
  var data= CreateUserRequest(name: 'musongela', email: 'email', password: "password", confirmed: "confirmed");


  usecase.run(data);
}