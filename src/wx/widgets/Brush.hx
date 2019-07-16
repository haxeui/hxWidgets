package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.styles.BrushStyle;

@:include("wx/brush.h")
@:unreflective
@:native("wxBrush")
@:structAccess
extern class Brush extends GDIObject {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxBrush")             private static function _new():RawPointer<Brush>;
                                        public static inline function createInstance():Pointer<Brush> {
                                            return Pointer.fromRaw(_new());
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetColour")               public function getColour():Colour;
    @:native("SetColour")               public function setColour(colour:Colour):Void;
    @:native("GetStyle")                public function getStyle():BrushStyle;
    @:native("SetStyle")                public function setStyle(style:BrushStyle):Void;

}
