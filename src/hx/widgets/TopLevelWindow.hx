package hx.widgets;

import cpp.Pointer;
import wx.widgets.TopLevelWindow in WxTopLevelWindow;
import wx.widgets.WxString;

@:access(hx.widgets.Icon)
@:access(hx.widgets.BitmapBundle)
class TopLevelWindow extends NonOwnedWindow {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var title(get, set):String;
    private function get_title():String {
        var r:WxString = topLevelWindowRef.ptr.getTitle();
        return new String(r.toUTF8().data());
    }
    private function set_title(value:String):String {
        var s = WxString.createInstance(value);
        topLevelWindowRef.ptr.setTitle(s.ref);
        s.destroy();
        return value;
    }

    public function iconize(iconize:Bool = true) {
        topLevelWindowRef.ptr.iconize(iconize);
    }
    
    public var iconized(get, set):Bool;
    private function get_iconized():Bool {
        return topLevelWindowRef.ptr.isIconized();
    }
    private function set_iconized(value:Bool):Bool {
        topLevelWindowRef.ptr.iconize(value);
        return value;
    }
    
    public function maximize(maximize:Bool = true) {
        topLevelWindowRef.ptr.maximize(maximize);
    }
    
    public var maximized(get, set):Bool;
    private function get_maximized():Bool {
        return topLevelWindowRef.ptr.isMaximized();
    }
    private function set_maximized(value:Bool):Bool {
        topLevelWindowRef.ptr.maximize(value);
        return value;
    }
    
    /* TODO: doesnt seem to work with git versions of wxWidgets, seems something has changed, need to review
    #if (wxWidgetsVersion >= version("3.1.6"))
    public function setIcon(icon:BitmapBundle) {
        topLevelWindowRef.ptr.setIcon(icon.bitmapBundleRef.ref);
    }
    #else
    */
    public function setIcon(icon:Icon) {
        topLevelWindowRef.ptr.setIcon(icon.iconRef.ref);
    }
    //#end

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Utility
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    /* TODO: doesnt seem to work with git versions of wxWidgets, seems something has changed, need to review
    #if (wxWidgetsVersion >= version("3.1.6"))
    public function setBitmap(bitmap:Bitmap) {
        var bitmapBundle = new BitmapBundle(bitmap);
        topLevelWindowRef.ptr.setIcon(bitmapBundle.bitmapBundleRef.ref);
    }
    #else
    */
    public function setBitmap(bitmap:Bitmap) {
        var icon = new Icon();
        icon.copyFromBitmap(bitmap);
        topLevelWindowRef.ptr.setIcon(icon.iconRef.ref);
    }
    //#end
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var topLevelWindowRef(get, null):Pointer<WxTopLevelWindow>;
    private function get_topLevelWindowRef():Pointer<WxTopLevelWindow> {
        return _ref.reinterpret();
    }

}
