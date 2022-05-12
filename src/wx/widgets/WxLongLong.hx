package wx.widgets;

import cpp.Int32;
import cpp.UInt32;

@:include("wx/longlong.h")
@:unreflective
@:native("wxLongLong")
@:structAccess
@:analyzer(as_var)
extern class WxLongLong {
    @:native("GetHi")       public function getHi():Int32;
    @:native("GetLo")       public function getLo():UInt32;
    @:native("ToLong")      public function toLong():Int;
    @:native("ToDouble")    public function toDouble():Float;
}