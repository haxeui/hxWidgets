package hx.widgets;

import wx.widgets.Notebook in WxNotebook;
import wx.widgets.Size in WxSize;

class Notebook extends Control {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            var notebookRef:WxNotebook = WxNotebook.createInstance();
            notebookRef.create(parent != null ? parent._ref : Window.nullWindowRef, id, Point.defaultPositionRef, Size.defaultSizeRef, style);
            _ref = notebookRef;
        }
        
        super(parent, id);
    }
    
    public function addPage(page:Window, text:String, select:Bool = false, imageId:Int = -1):Bool {
        return notebookRef.addPage(page._ref, text, select, imageId);
    }
    
    public function getPageCount():Int {
        return notebookRef.getPageCount();
    }
    
    @:access(hx.widgets.ImageList)
    public function setImageList(imageList:ImageList) {
        notebookRef.setImageList(imageList._ref);
    }
    
    public function setSelection(page:Int) {
        notebookRef.setSelection(page);
    }
    
    @:access(hx.widgets.Size)
    public function calcSizeFromPage():Size {
        var size:Size = new Size();
        var r:WxSize = notebookRef.calcSizeFromPage(size._ref);
        return new Size(r.getWidth(), r.getHeight());
    }
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var notebookRef(get, null):WxNotebook;
    private inline function get_notebookRef():WxNotebook {
        return cast _ref;
    }
}
