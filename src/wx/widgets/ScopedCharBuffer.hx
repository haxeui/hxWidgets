package wx.widgets;

import cpp.ConstCharStar;

@:headerCode("
#include <wx/buffer.h>
#undef RegisterClass
")
@:unreflective
@:native("wxScopedCharBuffer")
@:structAccess
extern class ScopedCharBuffer {

    @:native("data")                   public function data():ConstCharStar;

}

