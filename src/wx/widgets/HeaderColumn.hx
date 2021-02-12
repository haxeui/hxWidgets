package wx.widgets;

@:include("wx/headercol.h")
@:unreflective
@:native("wxHeaderColumn")
@:structAccess
extern class HeaderColumn {
    @:native("GetTitle")        public function getTitle():WxString;
    @:native("GetWidth")        public function getWidth():Int;
}