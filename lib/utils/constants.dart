/// E-mail バリデーション(RFC準拠)
/// E-mail RegExp rule: https://regexper.com/#%5E%5Ba-zA-Z0-9.!%23%24%25%26'*%2B%5C%2F%3D%3F%5E_%60%7B%7C%7D~-%5D%2B%40%5Ba-zA-Z0-9-%5D%2B%28%3F%3A%5C.%5Ba-zA-Z0-9-%5D%2B%29*%24
/// Password : 英数字、大文字小文字、記号のうち2種類以上6桁以上
/// Password RegExp rule : https://regexper.com/#%5E%28%28%3F%3D.*%5Ba-zA-Z%5D%29%5B0-9!-%5C%2F%3A-%40%5B-%60%7B-~%5D%7C%28%3F%3D.*%5B0-9%5D%29%5Ba-zA-Z!-%5C%2F%3A-%40%5B-%60%7B-~%5D%7C%28%3F%3D.*%3F%5B!-%5C%2F%3A-%40%5B-%60%7B-~%5D%29%5Ba-zA-Z0-9%5D%29%5Ba-zA-Z0-9!-%5C%2F%3A-%40%5B-%60%7B-~%5D%7B6%2C64%7D%24

const String emailRegExp =
    r"^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*\.[a-zA-Z0-9][a-zA-Z0-9-]{0,61}[a-zA-Z0-9]$";
const String passwordRegExp =
    r"^((?=.*[a-zA-Z])[0-9!-\/:-@[-`{-~]|(?=.*[0-9])[a-zA-Z!-\/:-@[-`{-~]|(?=.*?[!-\/:-@[-`{-~])[a-zA-Z0-9])[a-zA-Z0-9!-\/:-@[-`{-~]{6,64}$";

const String signUpSuccess = 'Sign-up Success!';
const String signUpFailed = 'Validation Error Occurred';
const String emailHintText = 'example@test.com';
const String emailEmpty = 'Please input your address';
const String passwordEmpty = 'Please input your password';
const String emailLabel = 'Email';
const String passwordText = 'Password';
const String passwordValidationError = 'Invalid format password';
const String emailValidationError = 'Invalid format email';
const String passwordValidRules =
    '*at least 6 characters, and including a number or lower-uppercase letter or symbols';
const String signUpButton = 'Sign-up!';
