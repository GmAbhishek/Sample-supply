class ApiConstants {
  final serviceKey = '67shxa42pm9ho574c6wq';
  final clientId = '0';

  Map<String, String> getHeader() => {
        'Content-Type': 'application/json',
    'Access-Control-Allow-Origin': '*'

      };
  Map<String, String> getHeader1(String token) => {
    'Authorization': token,
    'Content-Type': 'application/json',
  };

  final baseUrl = 'http://139.59.61.124/';

  String verifyLoginUrl() => baseUrl + 'accounts/login/';


  final parmUserName = 'username';
  final paramPassword = 'password';



}
