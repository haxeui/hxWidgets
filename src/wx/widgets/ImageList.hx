package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/imaglist.h")
@:unreflective
@:native("wxImageList")
@:structAccess
extern class ImageList extends Object {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxImageList")         private static function _new():RawPointer<ImageList>;
                                        public static inline function createInstance():Pointer<ImageList> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  public function create(width:Int, height:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Add")                     public function add(bitmap:Bitmap):Int;
    @:native("GetIcon")                 public function getIcon(index:Int):Icon;

}
