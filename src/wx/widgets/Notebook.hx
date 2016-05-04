package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/notebook.h")
@:unreflective
@:native("wxNotebook")
extern class Notebook extends Control {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxNotebook")          private static function _new():RawPointer<Window>;
                                        public static inline function createInstance():Pointer<Window> return Pointer.fromRaw(_new());

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("AddPage")                 public function addPage(page:RawPointer<Window>, text:ConstCharStar, select:Bool = false, imageId:Int = -1):Bool;
    @:native("GetPageCount")            public function getPageCount():Int;
    @:native("GetImageList")            public function getImageList():RawPointer<ImageList>;
    @:native("SetImageList")            public function setImageList(imageList:RawPointer<ImageList>):Void;
    @:native("GetSelection")            public function getSelection():Int;
    @:native("SetSelection")            public function setSelection(page:Int):Void;
    @:native("CalcSizeFromPage")        public function calcSizeFromPage(pageSize:Size):Size;
    @:native("SetPadding")              public function setPadding(padding:Size):Void;
}
