package hx.widgets;

import cpp.Pointer;
import hx.widgets.ImageList;
import wx.widgets.TreeCtrl in WxTreeCtrl;
import wx.widgets.WxString;
import hx.widgets.styles.TreeCtrlStyle;

@:access(hx.widgets.TreeItemId)
class TreeCtrl extends Control {

    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxTreeCtrl.createInstance().reinterpret();
            if (style == 0) {
                style = TreeCtrlStyle.DEFAULT_STYLE;
            }
            treeCtrlRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
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
        treeCtrlRef.ptr.assignImageList(value.imagelistRef.get_raw());
        return value;
    }
    
    public function addRoot(text:String, image:Int = -1, selectedImage:Int = -1):TreeItemId {
        var s = WxString.fromUTF8(text);
        var itemId = treeCtrlRef.ptr.addRoot(s, image, selectedImage);
        var treeItemId = new TreeItemId();
        treeItemId.itemId = itemId;
        return treeItemId;
    }
    
    public function appendItem(parent:TreeItemId, text:String, image:Int = -1, selectedImage:Int = -1):TreeItemId {
        var s = WxString.fromUTF8(text);
        var itemId = treeCtrlRef.ptr.appendItem(parent.itemId, s, image, selectedImage);
        var treeItemId = new TreeItemId();
        treeItemId.itemId = itemId;
        return treeItemId;
    }
    
    public function collapse(item:TreeItemId) {
        treeCtrlRef.ptr.collapse(item.itemId);
    }
    
    public function collapseAll() {
        treeCtrlRef.ptr.collapseAll();
    }
    
    public function collapseAllChildren(item:TreeItemId) {
        treeCtrlRef.ptr.collapseAllChildren(item.itemId);
    }

    public function expand(item:TreeItemId) {
        treeCtrlRef.ptr.expand(item.itemId);
    }
    
    public function expandAll() {
        treeCtrlRef.ptr.expandAll();
    }
    
    public function expandAllChildren(item:TreeItemId) {
        treeCtrlRef.ptr.expandAllChildren(item.itemId);
    }

    public function delete(item:TreeItemId) {
        treeCtrlRef.ptr.delete(item.itemId);
    }
    
    public function deleteAllItems() {
        treeCtrlRef.ptr.deleteAllItems();
    }
    
    public function deleteChildren(item:TreeItemId) {
        treeCtrlRef.ptr.deleteChildren(item.itemId);
    }
    
    public function getChildrenCount(item:TreeItemId, recursively:Bool = true) {
        treeCtrlRef.ptr.getChildrenCount(item.itemId, recursively);
    }
    
    public var rootItem(get, null):TreeItemId;
    private function get_rootItem():TreeItemId {
        var itemId = treeCtrlRef.ptr.getRootItem();
        var treeItemId = new TreeItemId();
        treeItemId.itemId = itemId;
        return treeItemId;
    }
    
    public var selection(get, set):TreeItemId;
    private function get_selection():TreeItemId {
        var itemId = treeCtrlRef.ptr.getSelection();
        var treeItemId = new TreeItemId();
        treeItemId.itemId = itemId;
        return treeItemId;
    }
    private function set_selection(value:TreeItemId):TreeItemId {
        treeCtrlRef.ptr.selectItem(value.itemId);
        return value;
    }
    
    public function getItemText(item:TreeItemId):String {
        var r:WxString = treeCtrlRef.ptr.getItemText(item.itemId);
        return new String(r.toUTF8().data());
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var treeCtrlRef(get, null):Pointer<WxTreeCtrl>;
    private function get_treeCtrlRef():Pointer<WxTreeCtrl> {
        return _ref.reinterpret();
    }
}