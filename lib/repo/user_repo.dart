
import 'package:yyu_library/services/firestore_service.dart';
import 'package:yyu_library/models/user_model.dart';

class UserRepo {
  
  FirestoreDb  _data=FirestoreDb();

  Future<List<User>> getAllUser() async {
   var userdata =await _data.getAllUsers();
  
   if ( userdata.docs.isNotEmpty) {
     List<User> userlist= userdata.docs.map((doc) {
      final data=doc.data();
      return User(id: doc.id, tin: data["tin"], role: data["role"], name: data["name"], surname: data["surname"], age: data["age"], mail: data["mail"], phone: data["phone"], adress: data["adress"], registrationStatus: data["registrationStatus"], membershipDate: data["membershipDate"], dept: data["dept"], penaltyDate: data["penaltyDate"], bookCount: data["bookCount"]);
     }).toList();
     print(userlist[0]);
     return userlist;
   }
else{
  return [];
}
}
}