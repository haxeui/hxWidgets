package wx.widgets;

import cpp.ConstCharStar;

@:include("wx/notebook.h")
@:unreflective
@:native("wxNotebook*")
extern class Notebook extends NotebookImpl {
    @:native("new wxNotebook")      public static function createInstance():Notebook;
}

@:include("wx/notebook.h")
@:unreflective
@:native("wxNotebook")
extern class NotebookImpl extends Window {
    @:native("Create")              public function create(parent:Window, id:Int):Bool;
    @:native("AddPage")             public function addPage(page:Window, text:ConstCharStar, select:Bool, imageId:Int):Bool;
    @:native("SetImageList")        public function setImageList(imageList:ImageList):Void;
    @:native("SetSelection")        public function setSelection(page:Int):Void;
}
