import 'dart:convert';

import 'package:get/get.dart';

import '../../../common/services/cache_service.dart';
import '../common/user_api.dart';
import '../data/user.dart';
import 'news_config_service.dart';

class NewsUserService extends GetxService {
  static NewsUserService get to => Get.find();

  // 是否登录
  final _isLogin = false.obs;
  // 令牌 token
  String token = '';
  // 用户 profile
  final _profile = UserLoginResponseEntity().obs;

  bool get isLogin => _isLogin.value;
  UserLoginResponseEntity get profile => _profile.value;
  bool get hasToken => token.isNotEmpty;

  @override
  void onInit() {
    super.onInit();
    token =
        CacheService.to.getString(NewsConfigService.STORAGE_USER_TOKEN_KEY) ??
            '';
    var profileOffline =
        CacheService.to.getString(NewsConfigService.STORAGE_USER_PROFILE_KEY) ??
            '';
    if (profileOffline.isNotEmpty) {
      _profile(UserLoginResponseEntity.fromJson(jsonDecode(profileOffline)));
    }
  }

  // 保存 token
  Future<void> setToken(String value) async {
    await CacheService.to
        .setString(NewsConfigService.STORAGE_USER_TOKEN_KEY, value);
    token = value;
  }

  // 获取 profile
  Future<void> getProfile() async {
    if (token.isEmpty) return;
    var result = await UserAPI.profile();
    _profile(result);
    _isLogin.value = true;
    CacheService.to.setString(
        NewsConfigService.STORAGE_USER_PROFILE_KEY, jsonEncode(result));
  }

  // 保存 profile
  Future<void> saveProfile(UserLoginResponseEntity profile) async {
    _isLogin.value = true;
    CacheService.to.setString(
        NewsConfigService.STORAGE_USER_PROFILE_KEY, jsonEncode(profile));
  }

  // 注销
  Future<void> onLogout() async {
    if (_isLogin.value) await UserAPI.logout();
    await CacheService.to.remove(NewsConfigService.STORAGE_USER_TOKEN_KEY);
    _isLogin.value = false;
    token = '';
  }
}
