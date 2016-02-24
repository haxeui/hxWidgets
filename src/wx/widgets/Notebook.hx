package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/notebook.h")
@:unreflective
@:native("cpp::Reference<wxNotebook>")
extern class Notebook extends NotebookImpl {
    @:native("new wxNotebook")      public static function createInstance():Notebook;
}

@:include("wx/notebook.h")
@:unreflective
@:native("wxNotebook")
extern class NotebookImpl extends Control {
    @:native("AddPage")                 public function addPage(page:Window, text:ConstCharStar, select:Bool, imageId:Int):Bool;
    @:native("GetPageCount")            public function getPageCount():Int;
    @:native("SetImageList")            public function setImageList(imageList:ImageList):Void;
    @:native("SetSelection")            public function setSelection(page:Int):Void;
    @:native("CalcSizeFromPage")        public function calcSizeFromPage(pageSize:Size):Size;
}
