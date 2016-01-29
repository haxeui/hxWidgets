package hx.widgets;

import cpp.ConstCharStar;
import hx.widgets.ImageList.WxImageListRef;
import hx.widgets.Window.WxWindow;
import hx.widgets.Window.WxWindowRef;

@:access(hx.widgets.ImageList)
class Notebook extends Window {
    public function new(parent:Window, id:Int = -1) {
        super(parent, id);
        
        var notebookRef:WxNotebookRef = WxNotebookRef.createInstance();
        notebookRef.create(parent != null ? parent._ref : Window.nullWindowRef, id);
        untyped __cpp__("_ref = *notebookRef");
    }
    
    public function addPage(page:Window, text:String, select:Bool = false, imageId:Int = -1):Bool {
        return notebookRef.addPage(page._ref, text, select, imageId);
    }
    
    public function setImageList(imageList:ImageList) {
        notebookRef.setImageList(imageList._ref);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var notebookRef(get, null):WxNotebookRef;
    private function get_notebookRef():WxNotebookRef {
        return cast _ref;
    }
}

@:include("wx/notebook.h")
@:unreflective
@:native("wxNotebook*")
extern class WxNotebookRef extends WxNotebook {
    @:native("new wxNotebook")      public static function createInstance():WxNotebookRef;
}

@:include("wx/notebook.h")
@:unreflective
@:native("wxNotebook")
extern class WxNotebook extends WxWindow {
    @:native("Create")              public function create(parent:WxWindowRef, id:Int):Bool;
    @:native("AddPage")             public function addPage(page:WxWindowRef, text:ConstCharStar, select:Bool, imageId:Int):Bool;
    @:native("SetImageList")        public function setImageList(imageList:WxImageListRef):Void;
}
