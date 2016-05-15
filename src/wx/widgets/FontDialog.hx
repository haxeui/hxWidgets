package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/fontdlg.h")
@:unreflective
@:native("wxFontDialog")
extern class FontDialog extends Dialog {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxFontDialog")        private static function _new():RawPointer<Window>;
                                        public static inline function createInstance():Pointer<Window> return Pointer.fromRaw(_new());

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>):Bool {})
    @:native("Create")                  public override function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;
}
