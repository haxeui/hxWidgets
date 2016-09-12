package wx.widgets;

import cpp.ConstCharStar;

@:headerCode("
#include <wx/wx.h>
#undef RegisterClass
")
@:unreflective
@:native("wxCStrData")
@:structAccess
extern class CStrData {

    @:native("AsChar")                   public function asChar():ConstCharStar;

}
