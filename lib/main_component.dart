// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'child_component.dart';
import 'app_service.dart';

@Component(
    selector: 'my-app',
    templateUrl: 'main_component.html',
    directives: const [ChildComponent],
    providers: const [AppService])
class MainComponent {
  String myString = "Hello Universe";
  List<Map> myList = [];

  AppComponent(AppService appServiceData) {
    appServiceData.getData().then((data) {
      myList = data;
    });
  }

  void handleClicked(data) {
    myString = data;
  }
}
