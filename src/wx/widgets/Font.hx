package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/font.h")
@:unreflective
@:native("wxFont")
@:structAccess
extern class Font extends GDIObject {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxFont")              private static function _new(pointSize:Int, family:FontFamily, style:FontStyle, weight:FontWeight, underline:Bool = false):RawPointer<Font>;
                                        public static inline function createInstance(pointSize:Int, family:FontFamily, style:FontStyle, weight:FontWeight, underline:Bool = false):Pointer<Font> {
                                            return Pointer.fromRaw(_new(pointSize, family, style, weight, underline));
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetPointSize")            public function getPointSize():Int;
    @:native("GetFamily")               public function getFamily():FontFamily;
    @:native("GetStyle")                public function getStyle():FontStyle;
    @:native("GetWeight")               public function getWeight():FontWeight;
    @:native("GetUnderlined")           public function getUnderlined():Bool;

}
