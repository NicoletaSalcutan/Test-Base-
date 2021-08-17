import 'package:base_date_test/interfaces/ApiInterface.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreApi implements ApiInterface{
  final FirebaseFirestore kFirestore = FirebaseFirestore.instance;
  @override
  createProfile(Map<String, dynamic> profile) async {
    await kFirestore.collection("profile").doc().set(profile);
  }

  @override
  createTask(Map task) {
    // TODO: implement createTask
    throw UnimplementedError();
  }

  @override
  deleteProfile(String key) async {
    await kFirestore.collection("profile").doc(key).delete();
  }

  @override
  deleteTask(String key) {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

  @override
  getAllProfiles() async {
      QuerySnapshot result = await kFirestore.collection('profile').get();
      return result.docs.map((e) {
        Map m = e.data() as Map;
        m["key"] = e.id;
        return m;
      }).toList();
    // return [{
    //   "nume" : "Gheorghe",
    //   "prenume" : "Ghecrea",
    //   "functie" : "CEO",
    // },{
    //   "nume" : "Nicoleta",
    //   "prenume" : "Salcutan",
    //   "functie" : "CTO",
    // }];
  }

  @override
  getAllTasks() {
    // TODO: implement getAllTasks
    throw UnimplementedError();
  }

  @override
  getProfileById(String key) {
    // TODO: implement getProfileById
    throw UnimplementedError();
  }

  @override
  getTaskById(String key) {
    // TODO: implement getTaskById
    throw UnimplementedError();
  }

  @override
  updateProfile(String key, Map profile) {
    // TODO: implement updateProfile
    throw UnimplementedError();
  }

  @override
  updateTask(String key, Map task) {
    // TODO: implement updateTask
    throw UnimplementedError();
  }

}