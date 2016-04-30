package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/gdicmn.h")
@:unreflective
@:native("wxSize")
@:structAccess
extern class Size {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxSize")              private static function _new(width:Int, height:Int):RawPointer<Size>;
                                        public static inline function createInstance(width:Int, height:Int):Pointer<Size> return Pointer.fromRaw(_new(width, height));
                                                
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetWidth")                public function getWidth():Int;
    @:native("GetHeight")               public function getHeight():Int;
    @:native("SetWidth")                public function setWidth(value:Int):Void;
    @:native("SetHeight")               public function setHeight(value:Int):Void;
}

/*
@:include("wx/gdicmn.h")
@:unreflective
@:native("cpp::Reference<wxSize>")
extern class Size extends SizeImpl {
    @:native("new wxSize")      public static function createInstance():Size;
}

@:include("wx/gdicmn.h")
@:unreflective
@:structAccess
@:native("wxSize")
extern class SizeImpl {
    @:native("GetWidth")        public function getWidth():Int;
    @:native("GetHeight")       public function getHeight():Int;
    @:native("SetWidth")        public function setWidth(value:Int):Void;
    @:native("SetHeight")       public function setHeight(value:Int):Void;
}

*/