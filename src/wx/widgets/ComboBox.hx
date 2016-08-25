package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/combobox.h")
@:unreflective
@:native("wxComboBox")
extern class ComboBox extends Control implements ItemContainer {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxComboBox")      private static function _new():RawPointer<ComboBox>;
                                    public static inline function createInstance():Pointer<ComboBox> {
                                        return Pointer.fromRaw(_new());
                                    }
    
    @:native("Create")              @:overload(function(parent:RawPointer<Window>, id:Int):Bool {})
    @:native("Create")              @:overload(function(parent:RawPointer<Window>, id:Int, value:WxString, point:Point, size:Size, n:Int, choices:cpp.RawPointer<WxString>, style:Int):Bool {})
    @:native("Create")              override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ItemContainer
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Append")              public function append(string:WxString):Int;
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ItemContainerImmutable
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetString")           public function setString(n:Int, string:WxString):Void;
    @:native("GetString")           public function getString(n:Int):WxString;
}