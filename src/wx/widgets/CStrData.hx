package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/wx.h")
@:unreflective
@:native("wxCStrData")
@:structAccess
extern class CStrData {

    @:native("AsChar")                   public function asChar():ConstCharStar;

}
