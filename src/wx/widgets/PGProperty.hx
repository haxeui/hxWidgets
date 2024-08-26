package wx.widgets;

@:include("wx/propgrid/propgrid.h")
@:unreflective
@:native("wxPGProperty")
@:structAccess
extern class PGProperty extends Object {
    @:native("GetValueAsString")        public function getValueAsString():WxString;
    @:native("GetName")                 public function getName():WxString;
    @:native("SetAttribute")            public function setAttribute(attrName:WxString, value:Variant):Void;
    @:native("SetValue")                public function setValue(value:Variant):Void;
    @:native("GetValue")                public function getValue():Variant;
}