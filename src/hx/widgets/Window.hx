package hx.widgets;

import hx.widgets.styles.BackgroundStyle;
import wx.widgets.List.WindowList in WxWindowList;
import wx.widgets.List.WindowListNode in WxWindowListNode;
import wx.widgets.Point in WxPoint;
import wx.widgets.Size in WxSize;
import wx.widgets.Size.SizeImpl in WxSizeImpl;
import wx.widgets.Window in WxWindow;
import wx.widgets.Font in WxFont;

class Window extends EvtHandler {
    public function new(parent:Window = null, id:Int = -1) {
        super();
    }
    
    public function show(value:Bool = true) {
        _ref.show(value);
    }
    
    public function close(force:Bool = false) {
        _ref.close(force);
    }
    
    public function destroy() {
        _ref.destroy();
    }
    
    public function destroyChildren():Bool {
        return _ref.destroyChildren();
    }
    
    public function setSize(width:Int, height:Int) {
        _ref.setSize(width, height);
    }
    
    public function move(x:Int, y:Int) {
        _ref.move(x, y);
    }
    
    public function findWindowById(id:Int) {
        var winRef:WxWindow = _ref.findWindowById(id);
        var win:Window = new Window(null, -1);
        win._ref = cast winRef;
        return win;
    }

    public function refresh(eraseBackground:Bool = true) {
        _ref.refresh(eraseBackground);
    }
    
    @:access(hx.widgets.Rect)
    public function refreshRect(x:Int, y:Int, width:Int, height:Int, eraseBackground:Bool = true) {
        var rc = new Rect(x, y, width, height);
        _ref.refreshRect(rc._ref, eraseBackground);
    }
    
    public function update() {
        _ref.update();
    }
    
    public var foregroundColour(get, set):Int;
    private function get_foregroundColour():Int {
        return -1;
    }
    private function set_foregroundColour(colour:Int):Int {
        _ref.setForegroundColour(colour);
        return colour;
    }

    public var backgroundColour(get, set):Int;
    private function get_backgroundColour():Int {
        return -1;
    }
    private function set_backgroundColour(colour:Int):Int {
        _ref.setBackgroundColour(colour);
        return colour;
    }

    public var windowStyle(get, set):Int;
    private function get_windowStyle():Int {
        return _ref.getWindowStyle();
    }
    private function set_windowStyle(style:Int):Int {
        _ref.setWindowStyle(style);
        return style;
    }
    
    public function getSize():Size {
        var ref:WxSize = _ref.getSize();
        return new Size(ref.getWidth(), ref.getHeight());
    }
    
    public function getPosition():Point {
        var ref:WxPoint = _ref.getPosition();
        return new Point(ref.x, ref.y);
    }
    
    public function setVirtualSize(width:Int, height:Int) {
        _ref.setVirtualSize(width, height);
    }
    
    public function getVirtualSize():Size {
        var ref:WxSize = _ref.getVirtualSize();
        return new Size(ref.getWidth(), ref.getHeight());
    }
    
    public function setClientSize(width:Int, height:Int) {
        _ref.setClientSize(width, height);
    }
    
    public function getParent():Window {
        var parent:Window = new Window();
        parent._ref = _ref.getParent();
        return parent;
    }

    public function getId():Int {
        return _ref.getId();
    }
    
    public function setId(id:Int) {
        _ref.setId(id);
    }

    public var children(get, null):Array<Window>;
    private function get_children():Array<Window> {
        var list:Array<Window> = new Array<Window>();
        var windowList:WxWindowList = _ref.getChildren();
        for (i in 0...windowList.getCount()) {
            var ref:WxWindow = (windowList.item(i):WxWindowListNode).getData();
            var child:Window = new Window();
            child._ref = ref;
            list.push(child);
        }
        return list;
    }
    
    public function getClientSize() {
        var ref:WxSizeImpl = _ref.getClientSize();
        return new Size(ref.getWidth(), ref.getHeight());
    }
    
    public function getBestSize() {
        var ref:WxSize = _ref.getBestSize();
        return new Size(ref.getWidth(), ref.getHeight());
    }
    
    public function getMaxSize() {
        var ref:WxSize = _ref.getMaxSize();
        return new Size(ref.getWidth(), ref.getHeight());
    }
    
    public function getMinSize() {
        var ref:WxSize = _ref.getMinSize();
        return new Size(ref.getWidth(), ref.getHeight());
    }
    
    public function getMinClientSize() {
        var ref:WxSize = _ref.getMinClientSize();
        return new Size(ref.getWidth(), ref.getHeight());
    }
    
    @:access(hx.widgets.Font)
    public function setFont(font:Font) {
        _ref.setFont(font._ref);
    }
    
    @:access(hx.widgets.Font)
    public function getFont():Font {
        var ref:wx.widgets.Font.FontImpl = _ref.getFont();
        var font:Font = new Font();
        font._ref = WxFont.createInstanceFromFont(ref);
        return font;
    }
    
    public function freeze() {
        _ref.freeze();
    }

    public function thaw() {
        _ref.thaw();
    }
    
    public function isFrozen():Bool {
        return _ref.isFrozen();
    }
    
    public function beginRepositioningChildren():Bool {
        return _ref.beginRepositioningChildren();
    }
    
    public function endRepositioningChildren() {
        _ref.endRepositioningChildren();
    }
    
    public function setScrollPos(orientation:Int, pos:Int, refresh:Bool = true) {
        _ref.setScrollPos(orientation, pos, refresh);
    }
    
    public function getScrollPos(orientation:Int) {
        return _ref.getScrollPos(orientation);
    }
    
    public function getScrollRange(orientation:Int) {
        return _ref.getScrollRange(orientation);
    }
    
    public function getScrollThumb(orientation:Int) {
        return _ref.getScrollThumb(orientation);
    }
    
    public function setBackgroundStyle(style:BackgroundStyle):Bool {
        return _ref.setBackgroundStyle(#if (haxe_ver >= 3.3) style #else untyped __cpp__("((wxBackgroundStyle)style)")#end);
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // STATIC HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static var nullWindowRef(get, null):WxWindow;
    public static inline function get_nullWindowRef():WxWindow {
        return cast 0;
    }
    
}
