# angular_hates_polymer
A mixed Dart Angular / Polymer project
to  reproduce a bug in angular polymer interaction


* from angular i pass a dart object "model" to my polymer element

class Model {
@reflectable
Function callback;
@reflectable
String param;

}

* in my polymer html markup i call a function which gets this object as a parameter

{{callModel(model)}}
which looks like:

@reflectable
callModel(model) {
model.callback(model.param); 
}

* after angular 21 the callModel() function gets called, 
but the parameter "model" in chrome is a JsObject - which does not know anything about a callback.
