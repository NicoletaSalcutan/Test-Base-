import 'package:base_date_test/interfaces/ApiInterface.dart';
import 'package:base_date_test/local/database/sqfliteApi.dart';
import 'package:base_date_test/models/profile.dart';
import 'package:base_date_test/network/database/backendv2Api.dart';
import 'package:base_date_test/network/database/firestoreApi.dart';
import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  ApiInterface api = FirestoreApi();
  List<Profile>? profiles;

  Future<List<Profile>?> getProfiles() async {
    List<Map> result = await api.getAllProfiles();
    profiles = result.map((e) => Profile.fromJson(e)).toList();
    notifyListeners();
    return profiles;
  }

  createProfile(Profile p) {
    api.createProfile(p.toJson());
    if(profiles == null)
      profiles = [];
    profiles!.add(p);
    notifyListeners();
  }

  deleteProfile(Profile p){
    api.deleteProfile(p.key);
    profiles!.remove(p);
    notifyListeners();
  }

}
