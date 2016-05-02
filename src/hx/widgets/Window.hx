package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import hx.widgets.styles.BackgroundStyle;
import wx.widgets.Window in WxWindow;
import wx.widgets.Window.WindowList in WxWindowList;
import wx.widgets.Window.WindowListNode in WxWindowListNode;
import wx.widgets.Colour in WxColour;
import wx.widgets.Size in WxSize;
import wx.widgets.Rect in WxRect;
import wx.widgets.Point in WxPoint;
import wx.widgets.Font in WxFont;
import wx.widgets.ClassInfo in WxClassInfo;

class Window extends EvtHandler {
    private var _ref:Pointer<WxWindow>;
    public function new(parent:Window = null, id:Int = -1) {
        super();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Window status functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function show(value:Bool = true):Bool {
        return _ref.ptr.show(value);
    }

    public function hide():Bool {
        return _ref.ptr.hide();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Window deletion functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function close(force:Bool = false):Bool {
        return _ref.ptr.close(force);
    }
    
    public function destroy():Bool {
        var r = _ref.ptr.destroy();
        if (r == true) {
            _ref.destroy();
        }
        return r;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Child management functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function destroyChildren():Bool {
        return _ref.ptr.destroyChildren();
    }

    public function findWindowById(id:Int):Window {
        /*
        var p:Pointer<WxWindow> = _ref.ptr.findWindowById(id);
        var win:Window = new Window();
        var raw:RawPointer<WxWindow> = cast p.raw;
        win._ref = Pointer.fromRaw(raw);
        return autoConvert(win); // lets auto convert the class so it can be used with casts
        */
        var p:RawPointer<WxWindow> = _ref.ptr.findWindowById(id);
        var win:Window = new Window();
        win._ref = Pointer.fromRaw(p);
        return autoConvert(win); // lets auto convert the class so it can be used with casts
    }
    
    public var children(get, null):Array<Window>;
    private function get_children():Array<Window> {
        var list:Array<Window> = new Array<Window>();
        var windowList:WxWindowList = _ref.ptr.getChildren();
        trace(windowList.getCount());
        for (i in 0...windowList.getCount()) {
            var child:RawPointer<WxWindow> = windowList.item(i).getData();
            var win:Window = new Window();
            //var raw:RawPointer<WxWindow> = cast child.raw;
            win._ref = Pointer.fromRaw(child);
            list.push(autoConvert(win)); // lets auto convert the class so it can be used with casts
        }
        return list;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Sibling and parent management functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var parent(get, null):Window;
    private function get_parent():Window {
        /*
        var p:Pointer<WxWindow> = _ref.ptr.getParent();
        var win:Window = new Window();
        var raw:RawPointer<WxWindow> = cast p.raw;
        win._ref = Pointer.fromRaw(raw);
        return autoConvert(win); // lets auto convert the class so it can be used with casts
        */
        var p:RawPointer<WxWindow> = _ref.ptr.getParent();
        var win:Window = new Window();
        win._ref = Pointer.fromRaw(p);
        return autoConvert(win); // lets auto convert the class so it can be used with casts
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Drawing-related functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function refresh(eraseBackground:Bool = true) {
        _ref.ptr.refresh(eraseBackground);
    }
    
    public function refreshRect(rect:Rect, eraseBackground:Bool = true) {
        var temp:Pointer<WxRect> = rect.createPointer();
        _ref.ptr.refreshRect(temp.ref, eraseBackground);
        temp.destroy();
    }
    
    public function update() {
        _ref.ptr.update();
    }
    
    public var backgroundColour(get, set):Int;
    private function get_backgroundColour():Int {
        var r = _ref.ptr.getBackgroundColour();
        return Colour.copy(Pointer.addressOf(r)).rgb;
    }
    private function set_backgroundColour(value:Int):Int {
        var temp:Pointer<WxColour> = WxColour.createInstance(Colour.convertColor(value));
        _ref.ptr.setBackgroundColour(temp.ref);
        temp.destroy();
        return value;
    }
    
    public var foregroundColour(get, set):Int;
    private function get_foregroundColour():Int {
        var r = _ref.ptr.getForegroundColour();
        return Colour.copy(Pointer.addressOf(r)).rgb;
    }
    private function set_foregroundColour(value:Int):Int {
        var temp:Pointer<WxColour> = WxColour.createInstance(Colour.convertColor(value));
        _ref.ptr.setForegroundColour(temp.ref);
        temp.destroy();
        return value;
    }
    
    public var font(get, set):Font;
    private function get_font():Font {
        var r = _ref.ptr.getFont();
        return Font.copy(Pointer.addressOf(r));
    }
    private function set_font(value:Font):Font {
        var temp:Pointer<WxFont> = value.createPointer();
        _ref.ptr.setFont(temp.ref);
        temp.destroy();
        return value;
    }
    
    public function freeze() {
        _ref.ptr.freeze();
    }
    
    public function thaw() {
        _ref.ptr.thaw();
    }
    
    public var isFrozen(get, null):Bool;
    private function get_isFrozen():Bool {
        return _ref.ptr.isFrozen();
    }
    
    public var backgroundStyle:BackgroundStyle;
    private function get_backgroundStyle():BackgroundStyle {
        return _ref.ptr.getBackgroundStyle();
    }
    private function set_backgroundStyle(value:BackgroundStyle):BackgroundStyle {
        #if (haxe_ver >= 3.3)
        _ref.ptr.setBackgroundStyle(cast value);
        #else
        _ref.ptr.setBackgroundStyle(untyped __cpp__("((wxBackgroundStyle)value)"));
        #end
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Sizing functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function beginRepositioningChildren():Bool {
        return _ref.ptr.beginRepositioningChildren();
    }
    
    public function endRepositioningChildren() {
        _ref.ptr.endRepositioningChildren();
    }
    
    public var size(get, set):Size;
    private function get_size():Size {
        var r = _ref.ptr.getSize();
        return Size.copy(Pointer.addressOf(r));
    }
    private function set_size(value:Size):Size {
        var temp:Pointer<WxSize> = value.createPointer();
        _ref.ptr.setSize(temp.ref);
        temp.destroy();
        return value;
    }
    
    public function resize(width:Int, height:Int) { // bit of sugar - semantically works well with 'move'
        _ref.ptr.setSize(width, height);
    }
    
    public var clientSize(get, set):Size;
    private function get_clientSize():Size {
        var r = _ref.ptr.getClientSize();
        return Size.copy(Pointer.addressOf(r));
    }
    private function set_clientSize(value:Size):Size {
        var temp:Pointer<WxSize> = value.createPointer();
        _ref.ptr.setClientSize(temp.ref);
        temp.destroy();
        return value;
    }
    
    public function resizeClient(width:Int, height:Int) { // bit of sugar - semantically works well with 'move'
        _ref.ptr.setClientSize(width, height);
    }
    
    public var bestSize(get, null):Size;
    private function get_bestSize():Size {
        var r = _ref.ptr.getBestSize();
        return Size.copy(Pointer.addressOf(r));
    }
    
    public var virtualSize(get, set):Size;
    private function get_virtualSize():Size {
        var r = _ref.ptr.getVirtualSize();
        return Size.copy(Pointer.addressOf(r));
    }
    private function set_virtualSize(value:Size):Size {
        var temp:Pointer<WxSize> = value.createPointer();
        _ref.ptr.setVirtualSize(temp.ref);
        temp.destroy();
        return value;
    }
    
    public function resizeVirtual(width:Int, height:Int) { // bit of sugar - semantically works well with 'move'
        _ref.ptr.setVirtualSize(width, height);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Positioning functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function move(x:Int, y:Int) {
        _ref.ptr.move(x, y);
    }
    
    public var position(get, set):Point;
    private function get_position():Point {
        var r = _ref.ptr.getPosition();
        return Point.copy(Pointer.addressOf(r));
    }
    private function set_position(value:Point):Point {
        var temp:Pointer<WxPoint> = value.createPointer();
        _ref.ptr.setPosition(temp.ref);
        temp.destroy();
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Misc functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var classInfo(get, null):ClassInfo;
    @:access(hx.widgets.ClassInfo)
    private function get_classInfo():ClassInfo {
        var t:Pointer<WxClassInfo> = _ref.ptr.getClassInfo();
        var info:ClassInfo = new ClassInfo();
        
        var raw:RawPointer<WxClassInfo> = cast t.raw;
        info._ref = Pointer.fromRaw(raw);
        
        return info;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Static helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private static function autoConvert(win:Window):Window {
        var classInfo:ClassInfo = win.classInfo;
        var className = win.classInfo.className;
        if (StringTools.startsWith(className, "wx")) {
            className = className.substr(2, className.length);
        }
        className = "hx.widgets." + className;
        var clz = Type.resolveClass(className);
        if (clz != null) {
            win = convertTo(win, clz);
        }
        return win;
    }
    
    public static function convertTo<T>(win:Window, c:Class<T>):T {
        var t:T = Type.createEmptyInstance(c);
        var raw:RawPointer<WxWindow> = cast win._ref.raw;
        cast(t, Window)._ref = Pointer.fromRaw(raw);
        return t;
    }

    public static function toRaw(win:Window):RawPointer<WxWindow> {
        if (win == null) {
            return null;
        }
        return win._ref.get_raw();
    }
}
