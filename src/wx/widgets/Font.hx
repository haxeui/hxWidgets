package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/font.h")
@:unreflective
@:native("wxFont")
@:structAccess
extern class Font {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxFont")              private static function _new(pointSize:Int, family:FontFamily, style:FontStyle,
                                                                     weight:FontWeight, underline:Bool = false):RawPointer<Font>;
                                        public static inline function createInstance(pointSize:Int, family:FontFamily, style:FontStyle,
                                                                                     weight:FontWeight, underline:Bool = false):Pointer<Font>
                                                                                     return Pointer.fromRaw(_new(pointSize, family, style,
                                                                                                                 weight, underline = false));

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetPointSize")            public function getPointSize():Int;
    @:native("GetFamily")               public function getFamily():FontFamily;
    @:native("GetStyle")                public function getStyle():FontStyle;
    @:native("GetWeight")               public function getWeight():FontWeight;
    @:native("GetUnderlined")           public function getUnderlined():Bool;
}

/*
@:include("wx/font.h")
@:unreflective
@:native("cpp::Reference<wxFont>")
extern class Font extends FontImpl {
    @:native("new wxFont")               public static function createInstance(pointSize:Int, family:FontFamily, style:FontStyle, weight:FontWeight, underline:Bool = false):Font;
    @:native("new wxFont")               public static function createInstanceFromFont(font:FontImpl):Font;
}

@:unreflective
@:native("wxFont")
extern class FontImpl {
}
*/