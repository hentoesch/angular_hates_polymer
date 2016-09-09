// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
@HtmlImport('poly_elem.html')
library ang_poly_bug.lib.main_app;

import "model.dart";

import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';
import "dart:js" as js;

@PolymerRegister('poly-elem')
class PolyElem extends PolymerElement {
  PolyElem.created() : super.created();

  @property Model model;

  @reflectable
  callModel(Model shouldBeDartObject) {
    shouldBeDartObject.callback(shouldBeDartObject.param);
  }

}
