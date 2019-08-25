package hx.widgets;

import cpp.Pointer;
import hx.widgets.styles.ListCtrlStyle;
import wx.widgets.ListCtrl in WxListCtrl;
import wx.widgets.WxString;

@:access(hx.widgets.ListItem)
class ListCtrl extends Control {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {

        if (style == 0) {
            style = ListCtrlStyle.ICON;
        }

        if (_ref == null) {
            _ref = WxListCtrl.createInstance().reinterpret();
            listCtrlRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function insertItem(item:ListItem, autoDestroy:Bool = true):Int {
        var n = listCtrlRef.ptr.insertItem(item.listItemRef.ref);
        if (autoDestroy == true) {
            item.destroy();
        }
        return n;
    }

    public function setItem(item:ListItem, autoDestroy:Bool = true):Bool {
        var b = listCtrlRef.ptr.setItem(item.listItemRef.ref);
        if (autoDestroy == true) {
            item.destroy();
        }
        return b;
    }

    public function addItem(item:ListItem, autoDestroy:Bool = true):Int {
        item.id = itemCount;
        return insertItem(item, autoDestroy);
    }

    public function deleteItem(index:Int):Bool {
        return listCtrlRef.ptr.deleteItem(index);
    }
    
    public function deleteAllItems():Bool {
        return listCtrlRef.ptr.deleteAllItems();
    }
    
    public var itemCount(get, null):Int;
    private function get_itemCount():Int {
        return listCtrlRef.ptr.getItemCount();
    }

    public var selectedItemCount(get, null):Int;
    private function get_selectedItemCount():Int {
        return listCtrlRef.ptr.getSelectedItemCount();
    }

    public var enableAlternateRowColours(null, set):Bool;
    private function set_enableAlternateRowColours(value:Bool):Bool {
        listCtrlRef.ptr.enableAlternateRowColours(value);
        return value;
    }

    public var largeImageList(get, set):ImageList;
    @:access(hx.widgets.ImageList)
    private function get_largeImageList():ImageList {
        var list:ImageList = new ImageList();
        list._ref = Pointer.fromRaw(listCtrlRef.ptr.getImageList(untyped __cpp__("wxIMAGE_LIST_NORMAL"))).reinterpret();
        return list;
    }
    @:access(hx.widgets.ImageList)
    private function set_largeImageList(value:ImageList):ImageList {
        listCtrlRef.ptr.setImageList(value.imagelistRef.get_raw(), untyped __cpp__("wxIMAGE_LIST_NORMAL"));
        return value;
    }

    public var smallImageList(get, set):ImageList;
    @:access(hx.widgets.ImageList)
    private function get_smallImageList():ImageList {
        var list:ImageList = new ImageList();
        list._ref = Pointer.fromRaw(listCtrlRef.ptr.getImageList(untyped __cpp__("wxIMAGE_LIST_SMALL"))).reinterpret();
        return list;
    }
    @:access(hx.widgets.ImageList)
    private function set_smallImageList(value:ImageList):ImageList {
        listCtrlRef.ptr.setImageList(value.imagelistRef.get_raw(), untyped __cpp__("wxIMAGE_LIST_SMALL"));
        return value;
    }

    public function appendColumn(heading:String):Int {
        var s = WxString.fromUTF8(heading);
        var n:Int = listCtrlRef.ptr.appendColumn(s);
        return n;
    }

    public function getNextItem(item:Int, state:Int):Int {
        return listCtrlRef.ptr.getNextItem(item, untyped __cpp__("wxLIST_NEXT_ALL"), state);
    }
    
    // sugar
    public var selectedIndexes(get, null):Array<Int>;
    private function get_selectedIndexes():Array<Int> {
        var indexes:Array<Int> = [];
        
        var itemIndex = -1;
        while ((itemIndex = getNextItem(itemIndex, ListState.SELECTED)) != -1) {
            indexes.push(itemIndex);
        }
        
        return indexes;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var listCtrlRef(get, null):Pointer<WxListCtrl>;
    private function get_listCtrlRef():Pointer<WxListCtrl> {
       return _ref.reinterpret();
    }
}
