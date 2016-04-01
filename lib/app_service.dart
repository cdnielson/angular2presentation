import 'package:angular2/angular2.dart';
import 'dart:html';
import 'dart:convert';
import 'dart:async';

@Injectable()
class AppService {
  String get pathToData => "../web/data.json";

  Future getData() {
    Future dataReceived = HttpRequest.getString(pathToData).then((data) {
      List<Map> decoded = JSON.decode(data);
      return decoded;
    });
    return dataReceived;
  }
}