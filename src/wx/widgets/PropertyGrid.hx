package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/propgrid/propgrid.h")
@:unreflective
@:native("wxPropertyGrid")
@:structAccess
extern class PropertyGrid extends Control {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxPropertyGrid")              private static function _new():RawPointer<PropertyGrid>;
                                                public static inline function createInstance():Pointer<PropertyGrid> {
                                                    return Pointer.fromRaw(_new());
                                                }

    @:native("Create")                          override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;
    
    @:native("Append")                          public function append(property:RawPointer<PGProperty>):RawPointer<PGProperty>;
    @:native("AppendIn")                        public function appendIn(parent:RawPointer<PGProperty>, property:RawPointer<PGProperty>):RawPointer<PGProperty>;
    @:native("GetProperty")                     public function getProperty(name:WxString):RawPointer<PGProperty>;
    @:native("SetPropertyAttribute")            public function setPropertyAttribute(id:WxString, attrName:WxString, value:Bool, argFlags:Int = 0):Void;
    @:native("SetPropertyCell")                 public function setPropertyCell(property:RawPointer<PGProperty>, column:Int, text:WxString, bitmap:BitmapBundle, fgCol:Colour, bgCol:Colour):Void;
    @:native("SetPropertyBackgroundColour")     public function setPropertyBackgroundColour(property:RawPointer<PGProperty>, color:Colour, flags:PGPropertyValuesFlags):Void;
    @:native("ShowScrollbars")                  public function showScrollbars(horz:ScrollbarVisibility, vert:ScrollbarVisibility):Void;
    @:native("SetPropertyReadOnly")             public function setPropertyReadOnly(property:RawPointer<PGProperty>):Void;
    @:native("SetMarginColour")                 public function setMarginColour(col:Colour):Void;
    @:native("SetLineColour")                   public function setLineColour(col:Colour):Void;
    @:native("EnableProperty")                  public function enableProperty(property:RawPointer<PGProperty>, enable:Bool):Void;
    @:native("ClearSelection")                  public function clearSelection(validation:Bool = false):Bool;
}