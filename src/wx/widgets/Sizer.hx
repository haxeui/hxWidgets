package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/sizer.h")
@:unreflective
@:native("wxSizer")
extern class Sizer {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Add")                 @:overload(function(window:RawPointer<Sizer>, proportion:Int = 0, flag:SizerFlag = 0, border:Int = 0):RawPointer<SizerItem> {})
    @:native("Add")                 public function add(window:RawPointer<Window>, proportion:Int = 0, flag:SizerFlag = 0, border:Int = 0):RawPointer<SizerItem>;
    @:native("AddSpacer")           public function addSpacer(size:Int):RawPointer<SizerItem>;
}