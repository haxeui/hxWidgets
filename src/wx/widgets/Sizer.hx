package wx.widgets;

import cpp.RawPointer;

@:include("wx/sizer.h")
@:unreflective
@:native("wxSizer")
@:structAccess
extern class Sizer extends Object {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Add")                 @:overload(function(sizer:RawPointer<Sizer>, proportion:Int = 0, flag:SizerFlag = 0, border:Int = 0):RawPointer<SizerItem> {})
    @:native("Add")                 public function add(window:RawPointer<Window>, proportion:Int = 0, flag:SizerFlag = 0, border:Int = 0):RawPointer<SizerItem>;
    @:native("Insert")              @:overload(function(index:Int, sizer:RawPointer<Sizer>, proportion:Int = 0, flag:SizerFlag = 0, border:Int = 0):RawPointer<SizerItem> {})
    @:native("Insert")              public function insert(index:Int, window:RawPointer<Window>, proportion:Int = 0, flag:SizerFlag = 0, border:Int = 0):RawPointer<SizerItem>;
    @:native("AddSpacer")           public function addSpacer(size:Int):RawPointer<SizerItem>;
    @:native("AddStretchSpacer")    public function addStretchSpacer():RawPointer<SizerItem>;
    @:native("Remove")              public function remove(index:Int):Bool;
    @:native("Layout")              public function layout():Void;
}
