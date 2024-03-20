class LoginAuthResp {
  LoginAuthRespResult? result;
  dynamic targetUrl;
  bool? success;
  dynamic error;
  bool? unAuthorizedRequest;
  bool? abp;

  LoginAuthResp({
    this.result,
    this.targetUrl,
    this.success,
    this.error,
    this.unAuthorizedRequest,
    this.abp,
  });

  LoginAuthResp.fromJson(Map<String, dynamic> json) {
    result = json['result'] != null
        ? LoginAuthRespResult.fromJson(json['result'])
        : null;
    targetUrl = json['targetUrl'];
    success = json['success'];
    error = json['error'];
    unAuthorizedRequest = json['unAuthorizedRequest'];
    abp = json['__abp'];
  }

  Map<String, dynamic> toJson() {
    return {
      'result': result?.toJson(),
      'targetUrl': targetUrl,
      'success': success,
      'error': error,
      'unAuthorizedRequest': unAuthorizedRequest,
      '__abp': abp,
    };
  }
}

class LoginAuthRespResult {
  String? accessToken;
  String? encryptedAccessToken;
  int? expireInSeconds;
  bool? shouldResetPassword;
  dynamic passwordResetCode;
  int? userId;
  bool? requiresTwoFactorVerification;
  dynamic twoFactorAuthProviders;
  dynamic twoFactorRememberClientToken;
  dynamic returnUrl;
  String? refreshToken;
  int? refreshTokenExpireInSeconds;
  String? userName;
  String? defaultLanguage;
  String? defaultTimeZone;

  LoginAuthRespResult({
    this.accessToken,
    this.encryptedAccessToken,
    this.expireInSeconds,
    this.shouldResetPassword,
    this.passwordResetCode,
    this.userId,
    this.requiresTwoFactorVerification,
    this.twoFactorAuthProviders,
    this.twoFactorRememberClientToken,
    this.returnUrl,
    this.refreshToken,
    this.refreshTokenExpireInSeconds,
    this.userName,
    this.defaultLanguage,
    this.defaultTimeZone,
  });

  LoginAuthRespResult.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken']?.toString();
    encryptedAccessToken = json['encryptedAccessToken']?.toString();
    expireInSeconds = json['expireInSeconds'];
    shouldResetPassword = json['shouldResetPassword'];
    passwordResetCode = json['passwordResetCode'];
    userId = json['userId'];
    requiresTwoFactorVerification = json['requiresTwoFactorVerification'];
    twoFactorAuthProviders = json['twoFactorAuthProviders'];
    twoFactorRememberClientToken = json['twoFactorRememberClientToken'];
    returnUrl = json['returnUrl'];
    refreshToken = json['refreshToken']?.toString();
    refreshTokenExpireInSeconds = json['refreshTokenExpireInSeconds'];
    userName = json['userName']?.toString();
    defaultLanguage = json['defaultLanguage']?.toString();
    defaultTimeZone = json['defaultTimeZone']?.toString();
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'encryptedAccessToken': encryptedAccessToken,
      'expireInSeconds': expireInSeconds,
      'shouldResetPassword': shouldResetPassword,
      'passwordResetCode': passwordResetCode,
      'userId': userId,
      'requiresTwoFactorVerification': requiresTwoFactorVerification,
      'twoFactorAuthProviders': twoFactorAuthProviders,
      'twoFactorRememberClientToken': twoFactorRememberClientToken,
      'returnUrl': returnUrl,
      'refreshToken': refreshToken,
      'refreshTokenExpireInSeconds': refreshTokenExpireInSeconds,
      'userName': userName,
      'defaultLanguage': defaultLanguage,
      'defaultTimeZone': defaultTimeZone,
    };
  }
}
