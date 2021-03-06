import 'dart:convert';

import '../../../common/services/cache_service.dart';
import '../data/user.dart';

/// App缓存工具类
class CacheUtil {
  static const String keyUserInfo = 'user_info';

  ///存储用户信息
  static putUserInfo(User user) {
    CacheService.to.setString(keyUserInfo, jsonEncode(user.toJson()));
  }

  ///获取用户信息
  static User? getUserInfo() {
    try {
      var json = CacheService.to.getString(keyUserInfo);
      if (json == null) {
        return null;
      } else {
        return User.fromJson(jsonDecode(json));
      }
    } catch (e) {
      return null;
    }
  }

  ///删除用户信息
  static deleteUserInfo() {
    CacheService.to.remove(keyUserInfo);
  }
}
