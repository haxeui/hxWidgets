package hx.widgets;

import cpp.Pointer;
import hx.widgets.ImageList;
import wx.widgets.DataViewTreeCtrl in WxDataViewTreeCtrl;
import wx.widgets.WxString;
import hx.widgets.styles.DataViewCtrlStyle;
import wx.widgets.DataViewItem in WxDataViewItem;

@:access(hx.widgets.DataViewItem)
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
            var parentItem = untyped __cpp__("wxDataViewItem(0)");
            newItem._item = dataViewTreeCtrlRef.ptr.appendContainer(parentItem, s, icon, expanded);
        } else {
            var parentItem = parent._item;
            newItem._item = dataViewTreeCtrlRef.ptr.appendContainer(parentItem, s, icon, expanded);
        }
        
        return newItem;
    }
    
    public function appendItem(parent:DataViewItem, text:String, icon:Int = -1):DataViewItem {
        var s = WxString.fromUTF8(text);
        var newItem = new DataViewItem();
        if (parent == null) {
            var parentItem = untyped __cpp__("wxDataViewItem(0)");
            newItem._item = dataViewTreeCtrlRef.ptr.appendItem(parentItem, s, icon);
        } else {
            var parentItem = parent._item;
            newItem._item = dataViewTreeCtrlRef.ptr.appendItem(parentItem, s, icon);
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
    
    public function deleteAllItems() {
        dataViewTreeCtrlRef.ptr.deleteAllItems();
    }

    public function deleteChildren(item:DataViewItem) {
        dataViewTreeCtrlRef.ptr.deleteChildren(item._item);
    }

    public function deleteItem(item:DataViewItem) {
        dataViewTreeCtrlRef.ptr.deleteItem(item._item);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var dataViewTreeCtrlRef(get, null):Pointer<WxDataViewTreeCtrl>;
    private function get_dataViewTreeCtrlRef():Pointer<WxDataViewTreeCtrl> {
        return _ref.reinterpret();
    }
}