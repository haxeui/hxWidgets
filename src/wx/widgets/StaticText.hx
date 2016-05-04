package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/stattext.h")
@:unreflective
@:native("wxStaticText")
extern class StaticText extends Control {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxStaticText")        private static function _new():RawPointer<Window>;
                                        public static inline function createInstance():Pointer<Window> return Pointer.fromRaw(_new());

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, title:ConstCharStar, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  public override function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Wrap")                    public function wrap(width:Int):Void;
}

/*
import cpp.CastCharStar;
import cpp.ConstCharStar;
import cpp.NativeString;
import wx.widgets.StaticText.WxStringImpl;

@:include("wx/stattext.h")
@:unreflective
@:native("cpp::Reference<wxStaticText>")
extern class StaticText extends StaticTextImpl {
    @:native("new wxStaticText")    public static function createInstance():StaticText;
}
*/

/*
@:include("wx/string.h")
@:unreflective
@:native("cpp::Reference<wxString>")
extern class WxString extends WxStringImpl {
  
}

@:include("wx/string.h")
@:unreflective
@:native("wxString")
@:structAccess
extern class WxStringImpl {
    @:native("Length")            public function length():Int;
    @:native("c_str")            public function c_str():ConstCharStar;
}
*/

/*
@:include("wx/stattext.h")
@:unreflective
@:native("wxStaticText")
extern class StaticTextImpl extends Control {
    @:native("Create")          @:overload(function(parent:Window, id:Int, value:ConstCharStar, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")          public override function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;
    @:native("GetLabel")                public function test():WxStringImpl;

    @:native("Wrap")            public function wrap(width:Int):Void;
    
}
*/