package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/image.h")
@:unreflective
@:native("wxImage")
@:structAccess
extern class Image extends Object {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxImage")             private static function _new(stream:MemoryInputStream):RawPointer<Image>;
                                        public static inline function createInstance(stream:MemoryInputStream):Pointer<Image> {
                                            return Pointer.fromRaw(_new(stream));
                                        }
    @:native("new wxImage")             private static function _newFromData(width:Int, height:Int, data:RawPointer<cpp.UInt8>):RawPointer<Image>;
                                        public static inline function createInstanceFromData(width:Int, height:Int, data:RawPointer<cpp.UInt8>):Pointer<Image> {
                                            return Pointer.fromRaw(_newFromData(width, height, data));
                                        }

    @:native("new wxImage")             private static function _newFromSize(width:Int, height:Int):RawPointer<Image>;
                                        public static inline function createInstanceFromSize(width:Int, height:Int):Pointer<Image> {
                                            return Pointer.fromRaw(_newFromSize(width, height));
                                        }
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetWidth")                public function getWidth():Int;
    @:native("GetHeight")               public function getHeight():Int;
    @:native("Scale")                   public function scale(width:Int, height:Int):Image;
    @:native("GetData")                 public function getData():RawPointer<cpp.UInt8>;
    @:native("GetAlpha")                public function getAlpha():RawPointer<cpp.UInt8>;
    @:native("GetSubImage")             public function getSubImage(rect:Rect):Image;
    @:native("Paste")                   public function paste(image:Reference<Image>, x:Int, y:Int):Void;
    @:native("Destroy")                 public function destroy():Void;
}
