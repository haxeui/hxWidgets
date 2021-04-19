package hx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import hx.widgets.styles.BackgroundStyle;
import hx.widgets.styles.ShowEffect;
import wx.widgets.Window in WxWindow;
import wx.widgets.Window.WindowList in WxWindowList;
import wx.widgets.Colour in WxColour;
import wx.widgets.Size in WxSize;
import wx.widgets.Rect in WxRect;
import wx.widgets.Point in WxPoint;
import wx.widgets.Font in WxFont;
import wx.widgets.ClassInfo in WxClassInfo;
import wx.widgets.EvtHandler in WxEvtHandler;
import wx.widgets.WxString;

class Window extends EvtHandler {

    public function new(parent:Window = null, id:Int = -1) {
        super();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Window status functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function show(value:Bool = true):Bool {
        return windowRef.ptr.show(value);
    }
    
    public function showWithEffect(effect:ShowEffect, timeout:Int = 0) {
        return windowRef.ptr.showWithEffect(effect, timeout);
    }

    public function hide():Bool {
        return windowRef.ptr.hide();
    }

    public function hideWithEffect(effect:ShowEffect, timeout:Int = 0) {
        return windowRef.ptr.hideWithEffect(effect, timeout);
    }

    public var enabled(get, set):Bool;
    private function get_enabled():Bool {
        return windowRef.ptr.isEnabled();
    }
    private function set_enabled(value:Bool):Bool {
        windowRef.ptr.enable(value);
        return value;
    }

    public var shown(get, null):Bool;
    private function get_shown():Bool {
        return windowRef.ptr.isShown();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Window deletion functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function close(force:Bool = false):Bool {
        return windowRef.ptr.close(force);
    }

    public override function destroy():Bool {
        for (c in children) {
            c.dispose();
        }
        dispose();
        var r = windowRef.ptr.destroy();
        if (r) {
            _ref = null;
        }
        return r;
    }

    public function scheduleForDestruction() {
        for (c in children) {
            c.dispose();
        }
        dispose();
        App.instance.scheduleForDestruction(this);
        _ref = null;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Child management functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function destroyChildren():Bool {
        return windowRef.ptr.destroyChildren();
    }

    public function findWindowById(id:Int):Window {
        var p:RawPointer<WxWindow> = windowRef.ptr.findWindowById(id);
        var win:Window = new Window();
        win._ref = Pointer.fromRaw(p).reinterpret();
        return autoConvert(win); // lets auto convert the class so it can be used with casts
    }

    public var children(get, null):Array<Window>;
    private function get_children():Array<Window> {
        var list:Array<Window> = [];
        var windowList:WxWindowList = windowRef.ptr.getChildren();

        for (i in 0...windowList.getCount()) {
            var child:RawPointer<WxWindow> = windowList.item(i).getData();
            var win:Window = new Window();
            win._ref = Pointer.fromRaw(child).reinterpret();
            list.push(autoConvert(win)); // lets auto convert the class so it can be used with casts
        }

        return list;
    }

    public function addChild(child:Window):Void {
        windowRef.ptr.addChild(child.windowRef.get_raw());
    }
    
    public function removeChild(child:Window):Void {
        windowRef.ptr.removeChild(child.windowRef.get_raw());
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Sibling and parent management functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var parent(get, null):Window;
    private function get_parent():Window {
        var p:RawPointer<WxWindow> = windowRef.ptr.getParent();
        var win:Window = new Window();
        win._ref = Pointer.fromRaw(p).reinterpret();
        return autoConvert(win); // lets auto convert the class so it can be used with casts
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Drawing-related functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function refresh(eraseBackground:Bool = true) {
        windowRef.ptr.refresh(eraseBackground);
    }

    public function refreshRect(rect:Rect, eraseBackground:Bool = true) {
        var temp:Pointer<WxRect> = rect.createPointer();
        windowRef.ptr.refreshRect(temp.ref, eraseBackground);
        temp.destroy();
    }

    public function update() {
        windowRef.ptr.update();
    }

    public var backgroundColour(get, set):Int;
    private function get_backgroundColour():Int {
        return windowRef.ptr.getBackgroundColour().GetRGB();
    }
    private function set_backgroundColour(value:Int):Int {
        var temp:Pointer<WxColour> = WxColour.createInstance(Colour.convertColor(value));
        windowRef.ptr.setBackgroundColour(temp.ref);
        temp.destroy();
        return value;
    }

    public var foregroundColour(get, set):Int;
    private function get_foregroundColour():Int {
        return windowRef.ptr.getForegroundColour().GetRGB();
    }
    private function set_foregroundColour(value:Int):Int {
        var temp:Pointer<WxColour> = WxColour.createInstance(Colour.convertColor(value));
        windowRef.ptr.setForegroundColour(temp.ref);
        temp.destroy();
        return value;
    }

    public var font(get, set):Font;
    private function get_font():Font {
        var r = windowRef.ptr.getFont();
        return Font.copy(r);
    }
    private function set_font(value:Font):Font {
        var temp:Pointer<WxFont> = value.createPointer();
        windowRef.ptr.setFont(temp.ref);
        temp.destroy();
        return value;
    }

    public function freeze() {
        windowRef.ptr.freeze();
    }

    public function thaw() {
        windowRef.ptr.thaw();
    }

    public var isFrozen(get, null):Bool;
    private function get_isFrozen():Bool {
        return windowRef.ptr.isFrozen();
    }

    public var backgroundStyle:BackgroundStyle;
    private function get_backgroundStyle():BackgroundStyle {
        return windowRef.ptr.getBackgroundStyle();
    }
    private function set_backgroundStyle(value:BackgroundStyle):BackgroundStyle {
        windowRef.ptr.setBackgroundStyle(cast value);
        return value;
    }

    public var canSetTransparent(get, null):Bool;
    private function get_canSetTransparent():Bool {
        return windowRef.ptr.canSetTransparent();
    }
    
    public var transparent(null, set):Int;
    private function set_transparent(value:Int):Int {
        windowRef.ptr.setTransparent(value);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Sizing functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function beginRepositioningChildren():Bool {
        return windowRef.ptr.beginRepositioningChildren();
    }

    public function endRepositioningChildren() {
        windowRef.ptr.endRepositioningChildren();
    }

    public function fit() {
        windowRef.ptr.fit();
    }

    public var size(get, set):Size;
    private function get_size():Size {
        var r = windowRef.ptr.getSize();
        return Size.copy(r);
    }
    private function set_size(value:Size):Size {
        var temp:Pointer<WxSize> = value.createPointer();
        windowRef.ptr.setSize(temp.ref);
        temp.destroy();
        return value;
    }

    public function resize(width:Int, height:Int) { // bit of sugar - semantically works well with 'move'
        windowRef.ptr.setSize(width, height);
    }

    public var minSize(get, set):Size;
    private function get_minSize():Size {
        var r = windowRef.ptr.getMinSize();
        return Size.copy(r);
    }
    private function set_minSize(value:Size):Size {
        var temp:Pointer<WxSize> = value.createPointer();
        windowRef.ptr.setMinSize(temp.ref);
        temp.destroy();
        return value;
    }

    public var maxSize(get, set):Size;
    private function get_maxSize():Size {
        var r = windowRef.ptr.getMaxSize();
        return Size.copy(r);
    }
    private function set_maxSize(value:Size):Size {
        var temp:Pointer<WxSize> = value.createPointer();
        windowRef.ptr.setMaxSize(temp.ref);
        temp.destroy();
        return value;
    }

    public var clientSize(get, set):Size;
    private function get_clientSize():Size {
        var r = windowRef.ptr.getClientSize();
        return Size.copy(r);
    }
    private function set_clientSize(value:Size):Size {
        var temp:Pointer<WxSize> = value.createPointer();
        windowRef.ptr.setClientSize(temp.ref);
        temp.destroy();
        return value;
    }

    public function resizeClient(width:Int, height:Int) { // bit of sugar - semantically works well with 'move'
        windowRef.ptr.setClientSize(width, height);
    }

    public var minClientSize(get, set):Size;
    private function get_minClientSize():Size {
        var r = windowRef.ptr.getMinClientSize();
        return Size.copy(r);
    }
    private function set_minClientSize(value:Size):Size {
        var temp:Pointer<WxSize> = value.createPointer();
        windowRef.ptr.setMinClientSize(temp.ref);
        temp.destroy();
        return value;
    }

    public var maxClientSize(get, set):Size;
    private function get_maxClientSize():Size {
        var r = windowRef.ptr.getMaxClientSize();
        return Size.copy(r);
    }
    private function set_maxClientSize(value:Size):Size {
        var temp:Pointer<WxSize> = value.createPointer();
        windowRef.ptr.setMaxClientSize(temp.ref);
        temp.destroy();
        return value;
    }

    public var bestSize(get, null):Size;
    private function get_bestSize():Size {
        var r = windowRef.ptr.getBestSize();
        return Size.copy(r);
    }

    public var virtualSize(get, set):Size;
    private function get_virtualSize():Size {
        var r = windowRef.ptr.getVirtualSize();
        return Size.copy(r);
    }
    private function set_virtualSize(value:Size):Size {
        var temp:Pointer<WxSize> = value.createPointer();
        windowRef.ptr.setVirtualSize(temp.ref);
        temp.destroy();
        return value;
    }

    public function resizeVirtual(width:Int, height:Int) { // bit of sugar - semantically works well with 'move'
        windowRef.ptr.setVirtualSize(width, height);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Positioning functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function move(x:Int, y:Int) {
        windowRef.ptr.move(x, y);
    }

    public var position(get, set):Point;
    private function get_position():Point {
        var r = windowRef.ptr.getPosition();
        return Point.copy(r);
    }
    private function set_position(value:Point):Point {
        var temp:Pointer<WxPoint> = value.createPointer();
        windowRef.ptr.setPosition(temp.ref);
        temp.destroy();
        return value;
    }

    public function centerOnParent() {
        windowRef.ptr.centerOnParent();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Window styles functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var windowStyle(get, set):Int;
    private function get_windowStyle():Int {
        return windowRef.ptr.getWindowStyle();
    }
    private function set_windowStyle(value:Int):Int {
        windowRef.ptr.setWindowStyle(value);
        return value;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Window properties functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var id(get, set):Int;
    private function get_id():Int {
        return windowRef.ptr.getId();
    }
    private function set_id(value:Int):Int {
        windowRef.ptr.setId(value);
        return value;
    }

    public var windowVariant(get, set):WindowVariant;
    private function get_windowVariant():WindowVariant {
        return windowRef.ptr.getWindowVariant();
    }
    private function set_windowVariant(value:WindowVariant):WindowVariant {
        windowRef.ptr.setWindowVariant(value);
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Scrolling and scrollbars functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function getScrollPos(orientation:Orientation):Int {
        return windowRef.ptr.getScrollPos(orientation);
    }

    public function setScrollPos(orientation:Orientation, pos:Int, refresh:Bool = true) {
        windowRef.ptr.setScrollPos(orientation, pos, refresh);
    }

    public function getScrollRange(orientation:Orientation):Int {
        return windowRef.ptr.getScrollRange(orientation);
    }

    public function getScrollThumb(orientation:Orientation):Int {
        return windowRef.ptr.getScrollThumb(orientation);
    }

    public var hscrollPos(get, set):Int; // bit of API sugar
    private function get_hscrollPos():Int {
        return getScrollPos(Orientation.HORIZONTAL);
    }
    private function set_hscrollPos(value:Int):Int {
        setScrollPos(Orientation.HORIZONTAL, value);
        return value;
    }

    public var vscrollPos(get, set):Int; // bit of API sugar
    private function get_vscrollPos():Int {
        return getScrollPos(Orientation.VERTICAL);
    }
    private function set_vscrollPos(value:Int):Int {
        setScrollPos(Orientation.VERTICAL, value);
        return value;
    }

    public var hscrollRange(get, null):Int; // bit of API sugar
    private function get_hscrollRange():Int {
        return getScrollRange(Orientation.HORIZONTAL);
    }

    public var vscrollRange(get, null):Int; // bit of API sugar
    private function get_vscrollRange():Int {
        return getScrollRange(Orientation.VERTICAL);
    }

    public var hscrollThumb(get, null):Int; // bit of API sugar
    private function get_hscrollThumb():Int {
        return getScrollThumb(Orientation.HORIZONTAL);
    }

    public var vscrollThumb(get, null):Int; // bit of API sugar
    private function get_vscrollThumb():Int {
        return getScrollThumb(Orientation.VERTICAL);
    }

    public function scrollLines(lines:Int):Bool {
        return windowRef.ptr.scrollLines(lines);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Constraints, sizers and window layout functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var sizer(get, set):Sizer;
    @:access(hx.widgets.Sizer)
    private function get_sizer():Sizer {
        var sizer:Sizer = new Sizer();
        sizer._ref = Pointer.fromRaw(windowRef.ptr.getSizer()).reinterpret();
        return sizer;
    }
    @:access(hx.widgets.Sizer)
    private function set_sizer(value:Sizer):Sizer {
        windowRef.ptr.setSizer(value.sizerRef.get_raw());
        return value;
    }

    @:access(hx.widgets.Sizer)
    public function setSizerAndFit(sizer:Sizer, deleteOld:Bool = true) {
        windowRef.ptr.setSizerAndFit(sizer.sizerRef.get_raw(), deleteOld);
    }

    public function layout():Bool {
        return windowRef.ptr.layout();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Event handling functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var eventHandler(get, null):EvtHandler;
    private function get_eventHandler():EvtHandler {
        var p:RawPointer<WxEvtHandler> = windowRef.ptr.getEventHandler();
        var evtHandler:EvtHandler = new EvtHandler();
        evtHandler._ref = Pointer.fromRaw(p).reinterpret();
        return evtHandler;
    }
    
    public override function queueEvent(event:Event) { // bit of sugar
        eventHandler.queueEvent(event);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Coordinate conversion functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function clientToScreen(pt:Point):Point {
        var temp:Pointer<WxPoint> = pt.createPointer();
        var converted:WxPoint = windowRef.ptr.clientToScreen(temp.ref);
        temp.destroy();
        return new Point(converted.x, converted.y);
    }

    public function screenToClient(pt:Point):Point {
        var temp:Pointer<WxPoint> = pt.createPointer();
        var converted:WxPoint = windowRef.ptr.screenToClient(temp.ref);
        temp.destroy();
        return new Point(converted.x, converted.y);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Popup/context menu functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:access(hx.widgets.Menu)
    public function popupMenu(menu:Menu):Bool {
        var r = windowRef.ptr.popupMenu(menu.menuRef.raw);
        return r;
        
    }
   
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Tooltips
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var toolTip(get, set):String;
    private function get_toolTip():String {
        var r:WxString = windowRef.ptr.getToolTipText();
        return new String(r.toUTF8().data());
    }
    private function set_toolTip(value:String):String {
        if (value == null) {
            windowRef.ptr.unsetToolTip();
        } else {
            var s = WxString.fromUTF8(value);
            windowRef.ptr.setToolTip(s);
        }
        return value;
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Misc functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public var classInfo(get, null):ClassInfo;
    @:access(hx.widgets.ClassInfo)
    private function get_classInfo():ClassInfo {
        var t:Pointer<WxClassInfo> = windowRef.ptr.getClassInfo();

        var info:ClassInfo = new ClassInfo();
        info._ref = t.reinterpret();

        return info;
    }

    public function hitTest(pt:Point):HitTest {
        var temp:Pointer<WxPoint> = pt.createPointer();
        var result = windowRef.ptr.hitTest(temp.ref);
        temp.destroy();
        return result;
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
        var raw:RawPointer<WxWindow> = cast win.windowRef.raw;
        cast(t, Window)._ref = Pointer.fromRaw(raw).reinterpret();
        return t;
    }

    public static function toRaw(win:Window):RawPointer<WxWindow> {
        if (win == null) {
            return null;
        }
        return win._ref.rawCast();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var windowRef(get, null):Pointer<WxWindow>;
    private function get_windowRef():Pointer<WxWindow> {
        return _ref.reinterpret();
    }

}
