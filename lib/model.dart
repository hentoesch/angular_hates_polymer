library angular.hates.polymer;
import "package:polymer/polymer.dart";
import "dart:js" as js;

@reflectable
printParam(String param) {
  print("printParam param=$param");
}

class Model extends JsProxy {
  @reflectable
  Function callback;
  @reflectable
  String param;
}
