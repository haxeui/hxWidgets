package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/colordlg.h")
@:unreflective
@:native("wxColourDialog")
extern class ColourDialog extends Dialog {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxColourDialog")      private static function _new():RawPointer<ColourDialog>;
                                        public static inline function createInstance():Pointer<ColourDialog> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>):Bool {})
    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, colourData:RawPointer<ColourData>):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetColourData")           public function getColourData():ColourData;
}
