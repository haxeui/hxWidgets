package hx.widgets;

import cpp.Pointer;
import wx.widgets.Notebook in WxNotebook;
import wx.widgets.Size in WxSize;
import wx.widgets.WxString;

class Notebook extends BookCtrlBase {

    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        allowIcons = true;

        if (_ref == null) {
            _ref = WxNotebook.createInstance().reinterpret();
            notebookRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function addPage(page:Window, text:String, select:Bool = false, imageId:Int = -1):Bool {
        if (!allowIcons) {
            imageId = -1;
        }
        var str = WxString.fromUTF8(text);
        return notebookRef.ptr.addPage(Window.toRaw(page), str, select, imageId);
    }

    public function deletePage(page:Int):Bool {
        return notebookRef.ptr.deletePage(page);
    }
    
    public function deleteAllPages():Bool {
        return notebookRef.ptr.deleteAllPages();
    }
    
    public var pageCount(get, null):Int;
    private function get_pageCount():Int {
        return notebookRef.ptr.getPageCount();
    }

    public var imageList(get, set):ImageList;
    @:access(hx.widgets.ImageList)
    private function get_imageList():ImageList {
        var list:ImageList = new ImageList();
        list._ref = Pointer.fromRaw(notebookRef.ptr.getImageList()).reinterpret();
        return list;
    }
    @:access(hx.widgets.ImageList)
    private function set_imageList(value:ImageList):ImageList {
        notebookRef.ptr.setImageList(value.imagelistRef.get_raw());
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

    public function calcSizeFromPage():Size {
        var pageSize:Size = new Size();
        var temp:Pointer<WxSize> = pageSize.createPointer();
        var r = notebookRef.ptr.calcSizeFromPage(temp.ref);
        temp.destroy();
        return new Size(r.getWidth(), r.getHeight());
    }

    public var padding(null, set):Size;
    private function set_padding(value:Size):Size {
        var temp:Pointer<WxSize> = value.createPointer();
        notebookRef.ptr.setPadding(temp.ref);
        temp.destroy();
        return value;
    }

    public function getPageText(page:Int):String {
        var r:WxString = notebookRef.ptr.getPageText(page);
        return new String(r.toUTF8().data());
    }

    public function setPageText(page:Int, text:String):Bool {
        var str = WxString.fromUTF8(text);
        return notebookRef.ptr.setPageText(page, str);
    }

    public var selectionText(get, null):String; // bit of sugar
    private function get_selectionText():String {
        return getPageText(selection);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Util functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var allowIcons:Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var notebookRef(get, null):Pointer<WxNotebook>;
    private function get_notebookRef():Pointer<WxNotebook> {
        return _ref.reinterpret();
    }

}
