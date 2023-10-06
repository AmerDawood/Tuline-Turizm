
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tuline_turizm/models/user.dart';

class UserPreferenceController{

  static final UserPreferenceController _instance=
  UserPreferenceController._internal();

  late SharedPreferences _sharedPreferences;

  UserPreferenceController._internal();

  factory UserPreferenceController(){
    return _instance;
  }

  Future<void> initSharedPreference () async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }
  Future<void> saveUser({required User user}) async{
    _sharedPreferences.setBool('logged_in' ,true);
    _sharedPreferences.setInt('id', user.id!);
    _sharedPreferences.setString('name', user.name!);
    // _sharedPreferences.setString('email', user.email!);
    _sharedPreferences.setString('type', user.type!);
    _sharedPreferences.setString('token', "${user.token}");

  }
  //
  //
  bool get loggedIn =>_sharedPreferences.getBool('logged_in')??false;
  String get token =>_sharedPreferences.getString('token')??'';
  String get name =>_sharedPreferences.getString('name')??'Example';
  String get type =>_sharedPreferences.getString('type')??'زائر';
  String get email =>_sharedPreferences.getString('email')??'';
  int get id =>_sharedPreferences.getInt('id')??0;

  // Create a setter for the name
  set name(String newName) {
    _sharedPreferences.setString('name', newName);
  }

  set email(String newEmail) {
    _sharedPreferences.setString('email', newEmail);
  }


  Future<bool> loggedOut()async{
    return await _sharedPreferences.clear();
  }

}