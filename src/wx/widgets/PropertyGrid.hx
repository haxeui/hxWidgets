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
    @:native("new wxPropertyGrid")      private static function _new():RawPointer<PropertyGrid>;
                                        public static inline function createInstance():Pointer<PropertyGrid> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;
    
    @:native("Append")                  public function append(property:RawPointer<PGProperty>):RawPointer<PGProperty>;
    @:native("GetProperty")             public function getProperty(name:WxString):RawPointer<PGProperty>;
    @:native("SetPropertyAttribute")    public function setPropertyAttribute(id:WxString, attrName:WxString, value:Bool, argFlags:Int = 0):Void;
}