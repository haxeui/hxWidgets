package hx.widgets;

import wx.widgets.Notebook in WxNotebook;

class Notebook extends Window {
    public function new(parent:Window, id:Int = -1) {
        super(parent, id);
        
        var notebookRef:WxNotebook = WxNotebook.createInstance();
        notebookRef.create(parent != null ? parent._ref : Window.nullWindowRef, id);
        _ref = cast notebookRef;
    }
    
    public function addPage(page:Window, text:String, select:Bool = false, imageId:Int = -1):Bool {
        return notebookRef.addPage(page._ref, text, select, imageId);
    }
    
    @:access(hx.widgets.ImageList)
    public function setImageList(imageList:ImageList) {
        notebookRef.setImageList(imageList._ref);
    }
    
    public function setSelection(page:Int) {
        notebookRef.setSelection(page);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var notebookRef(get, null):WxNotebook;
    private function get_notebookRef():WxNotebook {
        return cast _ref;
    }
}
