package wx.widgets;

@:include("wx/propgrid/propgrid.h")
@:unreflective
@:native("wxPGProperty")
@:structAccess
extern class PGProperty extends Object {
    @:native("GetValueAsString")        public function getValueAsString():WxString;
}