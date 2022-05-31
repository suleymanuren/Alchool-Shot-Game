import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/data_model.dart';

/*class SearchTownService {
  Data data = Data(soru: '');
  Dio dio = Dio();
  Future getSearchTownsModel() async {
    var data = {'data': '{"islem":"AllTowns"}'};
    dio = Dio(BaseOptions(
      baseUrl: "https://villarunner.com/",
    ));

    final response =
    await dio.post("mobile-api/index.php", data: FormData.fromMap(data));
    if (response.statusCode == 200) {
      Map<String , dynamic> json = jsonDecode(response.data);
      var usersDataFromJson = json['Datas'];
      //List<String> userData = List<String>.from(usersDataFromJson);
      //print("----ASA--->>>${usersDataFromJson.runtimeType}");
      return usersDataFromJson;



    }
    throw Exception();
  }
}*/

