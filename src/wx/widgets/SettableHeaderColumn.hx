package wx.widgets;

@:include("wx/headercol.h")
@:unreflective
@:native("wxSettableHeaderColumn")
@:structAccess
extern class SettableHeaderColumn extends HeaderColumn {
    @:native("SetTitle")        public function setTitle(title:WxString):Void;
    @:native("SetWidth")        public function setWidth(width:Int):Void;
    @:native("SetAlignment")    public function setAlignment(align:WxAlignment):Void;
}
