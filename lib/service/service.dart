import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Service {
  static Service service;

  static getInstance() {
    if (service == null) {
      service = Service();
    }

    return service;
  }

  Future get(url) async {
    http.Response response = await http.get(url);

    if (response.statusCode == HttpStatus.ok) {
      Map bodyJson = convert.jsonDecode(response.body);
      return bodyJson;
    } else {
      print("Permasalah terjadi pada koneksi ke dalam server SWAPI");
    }
  }
}