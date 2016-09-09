// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'package:polymer/polymer.dart';
import "poly_elem.dart";

import 'package:angular2/core.dart';
import "model.dart";
import "dart:async";
@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html')
class AppComponent implements OnInit {

  Model datamodel = new Model()
      ..callback = printParam
      ..param = "test";

  bool showMe=false;
  ngOnInit() {
    new Timer(new Duration(milliseconds: 200), _showPolyElem);
  }
  _showPolyElem() {
    showMe = true;
  }

}
