package hx.widgets;

import cpp.Pointer;
import cpp.Reference;
import hx.widgets.ImageList;
import wx.widgets.DataViewTreeCtrl in WxDataViewTreeCtrl;
import wx.widgets.WxString;
import hx.widgets.styles.DataViewCtrlStyle;
import wx.widgets.DataViewItem in WxDataViewItem;
import wx.widgets.Icon in WxIcon;

@:access(hx.widgets.DataViewItem)
@:access(hx.widgets.Icon)
class DataViewTreeCtrl extends DataViewCtrl {
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxDataViewTreeCtrl.createInstance().reinterpret();
            if (style == 0) {
                style = DataViewCtrlStyle.DV_NO_HEADER;
            }
            dataViewTreeCtrlRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }
    
    public function appendContainer(parent:DataViewItem, text:String, icon:Int = -1, expanded:Int = -1):DataViewItem {
        var s = WxString.fromUTF8(text);
        var newItem = new DataViewItem();
        if (parent == null) {
            newItem._item = dataViewTreeCtrlRef.ptr.appendContainer(untyped __cpp__("wxDataViewItem(0)"), s, icon, expanded);
        } else {
            var parentItem = parent._item;
            newItem._item = dataViewTreeCtrlRef.ptr.appendContainer(parentItem, s, icon, expanded);
        }
        
        return newItem;
    }
    
    public function prependContainer(parent:DataViewItem, text:String, icon:Int = -1, expanded:Int = -1):DataViewItem {
        var s = WxString.fromUTF8(text);
        var newItem = new DataViewItem();
        if (parent == null) {
            newItem._item = dataViewTreeCtrlRef.ptr.prependContainer(untyped __cpp__("wxDataViewItem(0)"), s, icon, expanded);
        } else {
            var parentItem = parent._item;
            newItem._item = dataViewTreeCtrlRef.ptr.prependContainer(parentItem, s, icon, expanded);
        }
        
        return newItem;
    }
    

    public function insertContainer(parent:DataViewItem, previous:DataViewItem, text:String, icon:Int = -1, expanded:Int = -1):DataViewItem {
        var s = WxString.fromUTF8(text);
        var newItem = new DataViewItem();
        if (parent == null) {
            var previousItem = previous._item;
            newItem._item = dataViewTreeCtrlRef.ptr.insertContainer(untyped __cpp__("wxDataViewItem(0)"), previousItem, s, icon, expanded);
        } else {
            var parentItem = parent._item;
            var previousItem = previous._item;
            newItem._item = dataViewTreeCtrlRef.ptr.insertContainer(parentItem, previousItem, s, icon, expanded);
        }
        
        return newItem;
    }
    
    public function appendItem(parent:DataViewItem, text:String, icon:Int = -1):DataViewItem {
        var s = WxString.fromUTF8(text);
        var newItem = new DataViewItem();
        if (parent == null) {
            newItem._item = dataViewTreeCtrlRef.ptr.appendItem(untyped __cpp__("wxDataViewItem(0)"), s, icon);
        } else {
            var parentItem = parent._item;
            newItem._item = dataViewTreeCtrlRef.ptr.appendItem(parentItem, s, icon);
        }
        
        return newItem;
    }
    
    public function prependItem(parent:DataViewItem, text:String, icon:Int = -1):DataViewItem {
        var s = WxString.fromUTF8(text);
        var newItem = new DataViewItem();
        if (parent == null) {
            newItem._item = dataViewTreeCtrlRef.ptr.prependItem(untyped __cpp__("wxDataViewItem(0)"), s, icon);
        } else {
            var parentItem = parent._item;
            newItem._item = dataViewTreeCtrlRef.ptr.prependItem(parentItem, s, icon);
        }
        
        return newItem;
    }
    
    public function insertItem(parent:DataViewItem, previous:DataViewItem, text:String, icon:Int = -1):DataViewItem {
        var s = WxString.fromUTF8(text);
        var newItem = new DataViewItem();
        if (parent == null) {
            var previousItem = previous._item;
            newItem._item = dataViewTreeCtrlRef.ptr.insertItem(untyped __cpp__("wxDataViewItem(0)"), previousItem, s, icon);
        } else {
            var parentItem = parent._item;
            var previousItem = previous._item;
            newItem._item = dataViewTreeCtrlRef.ptr.insertItem(parentItem, previousItem, s, icon);
        }
        
        return newItem;
    }
    
    private var _imageList:ImageList = null;
    public var imageList(get, set):ImageList;
    @:access(hx.widgets.ImageList)
    private function get_imageList():ImageList {
        return _imageList;
    }
    @:access(hx.widgets.ImageList)
    private function set_imageList(value:ImageList):ImageList {
        if (_imageList != null) {
            _imageList.destroy();
        }
        _imageList = value;
        dataViewTreeCtrlRef.ptr.setImageList(value.imagelistRef.get_raw());
        return value;
    }
    
    public function getItemText(item:DataViewItem):String {
        var r:WxString = dataViewTreeCtrlRef.ptr.getItemText(item._item);
        return new String(r.toUTF8().data());
    }
    
    public function setItemText(item:DataViewItem, text:String) {
        var s = WxString.fromUTF8(text);
        dataViewTreeCtrlRef.ptr.setItemText(item._item, s);
    }
    
    @:access(hx.widgets.ImageList)
    public function setItemIconIndex(item:DataViewItem, iconIndex:Int) {
        dataViewTreeCtrlRef.ptr.setItemIcon(item._item, _imageList.imagelistRef.ptr.getIcon(iconIndex));
    }
    
    public function deleteAllItems() {
        dataViewTreeCtrlRef.ptr.deleteAllItems();
    }

    public function deleteChildren(item:DataViewItem) {
        dataViewTreeCtrlRef.ptr.deleteChildren(item._item);
    }

    public function deleteItem(item:DataViewItem) {
        dataViewTreeCtrlRef.ptr.deleteItem(item._item);
    }
    
    public function isContainer(item:DataViewItem):Bool {
        return dataViewTreeCtrlRef.ptr.isContainer(item._item);
    }
    
    public function getChildCount(parent:DataViewItem):Int {
        if (parent == null) {
            return dataViewTreeCtrlRef.ptr.getChildCount(untyped __cpp__("wxDataViewItem(0)"));
        }

        return dataViewTreeCtrlRef.ptr.getChildCount(parent._item);
    }
    
    public function getNthChild(parent:DataViewItem, pos:Int):DataViewItem {
        if (parent == null) {
            var item = new DataViewItem();
            item._item = dataViewTreeCtrlRef.ptr.getNthChild(untyped __cpp__("wxDataViewItem(0)"), pos);
            return item;
        }

        var item = new DataViewItem();
        item._item = dataViewTreeCtrlRef.ptr.getNthChild(parent._item, pos);
        return item;
    }
    
    // doesnt exist in the wx api, but its a useful function to have
    public function getItemIndex(parent:DataViewItem, item:DataViewItem):Int {
        for (i in 0...getChildCount(parent)) {
            var temp = getNthChild(parent, i);
            if (temp.id == item.id) {
                return i;
            }
        }
        return -1;
    }

    // doesnt exist in the wx api, but its a useful function to have
    public function getNextItem(parent:DataViewItem, item:DataViewItem, wrap:Bool = false):DataViewItem {
        var max = getChildCount(parent);
        var index = getItemIndex(parent, item);
        var nextIndex = index + 1;
        if (nextIndex > max - 1) {
            if (wrap == false) {
                return null;
            }
            nextIndex = 0;
        }
        return getNthChild(parent, nextIndex);
    }

    public function getPrevItem(parent:DataViewItem, item:DataViewItem, wrap:Bool = false):DataViewItem {
        var max = getChildCount(parent);
        var index = getItemIndex(parent, item);
        var prevIndex = index - 1;
        if (prevIndex < 0) {
            if (wrap == false) {
                return null;
            }
            prevIndex = max - 1;
        }
        return getNthChild(parent, prevIndex);
    }

    public var indent(get, set):Int;
    private function get_indent():Int {
        return dataViewTreeCtrlRef.ptr.getIndent();
    }
    private function set_indent(value:Int):Int {
        dataViewTreeCtrlRef.ptr.setIndent(value);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dataViewTreeCtrlRef(get, null):Pointer<WxDataViewTreeCtrl>;
    private function get_dataViewTreeCtrlRef():Pointer<WxDataViewTreeCtrl> {
        return _ref.reinterpret();
    }
}