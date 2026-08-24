import 'package:first_flutter_project/lab3/user/user_repository.dart';

UserRepository _userRepo = UserRepository();

Future main() async{
  Iterable<dynamic> users = await _userRepo.fetchUser();

  for(var user in users){
    print(user.toString());
  }
}