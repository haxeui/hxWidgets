package hx.widgets;

import cpp.Pointer;
import wx.widgets.TaskBarIcon in WxTaskBarIcon;
import wx.widgets.WxString;

@:access(hx.widgets.Icon)
class TaskBarIcon extends EvtHandler {
    public function new() {
        if (_ref == null) {
            _ref = WxTaskBarIcon.createInstance().reinterpret();
        }
        
        super();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function setIcon(icon:Icon, tooltip:String = null) {
        taskBarIconRef.ptr.setIcon(icon.iconRef.ref, WxString.fromUTF8(tooltip));
    }
    
    public var isIconInstalled(get, null):Bool;
    private function get_isIconInstalled():Bool {
        return taskBarIconRef.ptr.isIconInstalled();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Utility
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function setBitmap(bitmap:Bitmap, tooltip:String = null) {
        var icon = new Icon();
        icon.copyFromBitmap(bitmap);
        taskBarIconRef.ptr.setIcon(icon.iconRef.ref, WxString.fromUTF8(tooltip));
    }
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var taskBarIconRef(get, null):Pointer<WxTaskBarIcon>;
    private function get_taskBarIconRef():Pointer<WxTaskBarIcon> {
       return _ref.reinterpret();
    }
}