import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:youssef_web_service/transfert.dart';

const urllocal = 'http://10.0.2.2:8080/exam/';
class SingletonDio {
  static final CookieManager cookiemanager = CookieManager(CookieJar());

  static Dio getDio() {
    Dio dio = Dio();
    dio.interceptors.add(cookiemanager);
    return dio;
  }
}
Future<List<Animal>> getAnimalsParContinentEtFamille(String continent, String famille) async {
  try {
    var url = '${urllocal}animaux/$continent?famille=$famille';
    var response = await SingletonDio.getDio().get(url);
    List<dynamic> data = response.data;
    return data.map((e) => Animal.fromJson(e)).toList();  } catch (e) {
    rethrow;
  }
}
