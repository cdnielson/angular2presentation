// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular2_presentation/child_component.dart';
import 'package:angular2_presentation/highlight_directive.dart';
import 'package:angular2_presentation/app_service.dart';

@Component(
    selector: 'my-app',
    templateUrl: 'main_component.html',
    directives: const [ChildComponent, HighlightDirective],
    providers: const [AppService])
class MainComponent {
  String get mySrc => "images/logo.png";
  String myString = "Hello Universe";
  List<Map> myList = [];
  String color;

  MainComponent(AppService appService) {
    appService.getData().then((data) {
      myList = data;
    });
//    appService.getDataBC().then((data) {
//      print(data);
//    });
  }

  void handleClicked(data) {
    myString = data;
  }
}
