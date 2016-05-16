package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/notebook.h")
@:unreflective
@:native("wxNotebook")
extern class Notebook extends BookCtrlBase {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxNotebook")          private static function _new():RawPointer<Notebook>;
                                        public static inline function createInstance():Pointer<Notebook> {
                                            return Pointer.fromRaw(_new());
                                        }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("AddPage")                 public function addPage(page:RawPointer<Window>, text:WxString, select:Bool = false, imageId:Int = -1):Bool;
    @:native("GetPageCount")            public function getPageCount():Int;
    @:native("GetImageList")            public function getImageList():RawPointer<ImageList>;
    @:native("SetImageList")            public function setImageList(imageList:RawPointer<ImageList>):Void;
    @:native("GetSelection")            public function getSelection():Int;
    @:native("SetSelection")            public function setSelection(page:Int):Int;
    @:native("CalcSizeFromPage")        public function calcSizeFromPage(pageSize:Size):Size;
    @:native("SetPadding")              public function setPadding(padding:Size):Void;
    @:native("GetPageText")             public function getPageText(page:Int):WxString;

}
