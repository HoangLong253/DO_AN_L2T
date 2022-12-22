import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user.dart';


Future createUser(Gamer user, uid) async {
  final docUser = FirebaseFirestore.instance.collection('users').doc(uid);

  final json = user.toJson();
  await docUser.set(json);
}

Future<Gamer?> getUser(uid) async {
  final docUser = FirebaseFirestore.instance.collection('users').doc(uid);
  final snapshot = await docUser.get();


  if(snapshot.exists){
    return Gamer.fromJson(snapshot.data()!);
  }

}