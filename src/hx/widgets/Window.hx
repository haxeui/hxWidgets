package hx.widgets;

import wx.widgets.List.WindowList in WxWindowList;
import wx.widgets.Point in WxPoint;
import wx.widgets.Size in WxSize;
import wx.widgets.Size.SizeImpl in WxSizeImpl;
import wx.widgets.Window in WxWindow;
import wx.widgets.Window.ChildrenRepositioningGuard in WxChildrenRepositioningGuard;

class Window extends EvtHandler {
    public function new(parent:Window = null, id:Int = -1) {
        super();
    }
    
    public function show(value:Bool) {
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
    
    public function setSize(x:Int, y:Int, width:Int, height:Int) {
        _ref.setSize(x, y, width, height);
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

    public function refresh() {
        _ref.refresh();
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
            var ref:WxWindow = windowList.item(i).getData();
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
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // STATIC HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static var nullWindowRef(get, null):WxWindow;
    public static inline function get_nullWindowRef():WxWindow {
        return cast 0;
    }
    
}

class ChildrenRepositioningGuard {
    private var _ref:WxChildrenRepositioningGuard;

	@:access(hx.widgets.Window)
    public function new(win:Window) {
        _ref = WxChildrenRepositioningGuard.createInstance(win._ref);
    }
}
