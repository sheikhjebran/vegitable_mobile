import 'package:shop/model/user.dart';
import 'package:http/http.dart' as http;
import 'package:shop/util/config.dart';

class ApiClient {
  var _apiClient = http.Client();

  Future login() async {
    var uri = Uri.parse(Config.getAuthenticateUrl);
    var response = _apiClient.get(uri);
    if (response.statusCode == 200) {
      return response;
    }
  }
  
}
