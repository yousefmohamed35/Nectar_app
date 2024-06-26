import 'package:shared_preferences/shared_preferences.dart';

class SharedPereferenceHelper {
  static late SharedPreferences sharedPreferences;
  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }
String? getDataString({ required String key}) {
    return sharedPreferences.getString(key);
  }
  dynamic getData({ required String key}) {
    return sharedPreferences.get(key);
  }
Future<bool>saveData({ required String key, required dynamic value}) async {
    if(value is bool) {
    return await sharedPreferences.setBool(key, value);
    }
  else  if(value is String) {
    return await sharedPreferences.setString(key, value);
    }
    else if (value is int) {
      return await sharedPreferences.setInt(key, value);
    }
    else{
      return await sharedPreferences.setDouble(key, value);
    }
  }
  
}
