package hx.widgets;

import cpp.Pointer;
import wx.widgets.TaskBarIcon in WxTaskBarIcon;
import wx.widgets.WxString;

@:access(hx.widgets.Icon)
@:access(hx.widgets.BitmapBundle)
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
    #if (wxWidgetsVersion >= version("3.1.6"))
    public function setIcon(icon:BitmapBundle, tooltip:String = null) {
        taskBarIconRef.ptr.setIcon(icon.bitmapBundleRef.ref, WxString.fromUTF8(tooltip));
    }
    #else
    public function setIcon(icon:Icon, tooltip:String = null) {
        taskBarIconRef.ptr.setIcon(icon.iconRef.ref, WxString.fromUTF8(tooltip));
    }
    #end
    
    public var isIconInstalled(get, null):Bool;
    private function get_isIconInstalled():Bool {
        return taskBarIconRef.ptr.isIconInstalled();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Utility
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    #if (wxWidgetsVersion >= version("3.1.6"))
    public function setBitmap(bitmap:Bitmap, tooltip:String = null) {
        var bitmapBundle = new BitmapBundle(bitmap);
        taskBarIconRef.ptr.setIcon(bitmapBundle.bitmapBundleRef.ref, WxString.fromUTF8(tooltip));
    }
    #else
    public function setBitmap(bitmap:Bitmap, tooltip:String = null) {
        var icon = new Icon();
        icon.copyFromBitmap(bitmap);
        taskBarIconRef.ptr.setIcon(icon.iconRef.ref, WxString.fromUTF8(tooltip));
    }
    #end
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var taskBarIconRef(get, null):Pointer<WxTaskBarIcon>;
    private function get_taskBarIconRef():Pointer<WxTaskBarIcon> {
       return _ref.reinterpret();
    }
}