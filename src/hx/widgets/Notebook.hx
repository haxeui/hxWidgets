package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Void;
import wx.widgets.Notebook in WxNotebook;
import wx.widgets.Size in WxSize;

class Notebook extends Control {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxNotebook.createInstance();
            notebookRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }
        
        super(parent, id);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function addPage(page:Window, text:String, select:Bool = false, imageId:Int = -1):Bool {
        return notebookRef.ptr.addPage(Window.toRaw(page), text, select, imageId);
    }
    
    public var pageCount(get, null):Int;
    private function get_pageCount():Int {
        return notebookRef.ptr.getPageCount();
    }
    
    public var imageList(get, set):ImageList;
    @:access(hx.widgets.ImageList)
    private function get_imageList():ImageList {
        var list:ImageList = new ImageList();
        list._ref = Pointer.fromRaw(notebookRef.ptr.getImageList());
        return list;
    }
    @:access(hx.widgets.ImageList)
    private function set_imageList(value:ImageList):ImageList {
        notebookRef.ptr.setImageList(value._ref.get_raw());
        return value;
    }
    
    public var selection(get, set):Int;
    private function get_selection():Int {
        return notebookRef.ptr.getSelection();
    }
    private function set_selection(value:Int):Int {
        notebookRef.ptr.setSelection(value);
        return value;
    }
    
    public function calcSizeFromPage(pageSize:Size):Size {
        var temp:Pointer<WxSize> = pageSize.createPointer();
        var r = notebookRef.ptr.calcSizeFromPage(temp.ref);
        temp.destroy();
        return Size.copy(Pointer.addressOf(r));
    }
    
    public var padding(null, set):Size;
    private function set_padding(value:Size):Size {
        var temp:Pointer<WxSize> = value.createPointer();
        notebookRef.ptr.setPadding(temp.ref);
        temp.destroy();
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var notebookRef(get, null):Pointer<WxNotebook>;
    private inline function get_notebookRef():Pointer<WxNotebook> {
        return Pointer.fromRaw(untyped __cpp__("(wxNotebook*)(_ref->get_raw())"));
    }
}
/*
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
    
    @:access(hx.widgets.Size)
    public function setPadding(width:Int, height:Int) {
        var size:Size = new Size(width, height);
        notebookRef.setPadding(size._ref);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var notebookRef(get, null):WxNotebook;
    private inline function get_notebookRef():WxNotebook {
        return cast _ref;
    }
}
*/