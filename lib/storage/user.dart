import 'package:get_storage/get_storage.dart';

class UserStorage {
  final String? nickname;
  final String? lang;
  final String? token;

  UserStorage({this.nickname, this.lang, this.token});

  static UserStorage? get() {
    String? userId = GetStorage().read('userId');
    if (userId != null) {
      var storage = GetStorage(userId);
      return UserStorage(
        nickname: storage.read('nickname'),
        lang: storage.read('lang'),
        token: storage.read('token'),
      );
    }
    return null;
  }

  static void put(map) {
    String? userId = GetStorage().read('userId');
    if (userId != null) {
      var storage = GetStorage(userId);
      storage.write('nickname', map['nickname'] ?? '');
      storage.write('lang', map['lang'] ?? 'en');
      storage.write('token', map['token'] ?? 'token');
    }
  }
}
