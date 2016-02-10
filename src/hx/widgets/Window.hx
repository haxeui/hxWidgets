package hx.widgets;

import hx.widgets.EvtHandler.WxEvtHandler;
import hx.widgets.Point.WxPointRef;
import hx.widgets.Size.WxSizeRef;

@:headerCode("#include <wx/window.h>")
class WindowStyle {
    public static var BORDER_DEFAULT:Int                    = untyped __cpp__("wxBORDER_DEFAULT");
    public static var BORDER_SIMPLE:Int                     = untyped __cpp__("wxBORDER_SIMPLE");
    public static var BORDER_SUNKEN:Int                     = untyped __cpp__("wxBORDER_SUNKEN");
    public static var BORDER_RAISED:Int                     = untyped __cpp__("wxBORDER_RAISED");
    public static var BORDER_STATIC:Int                     = untyped __cpp__("wxBORDER_STATIC");
    public static var BORDER_THEME:Int                      = untyped __cpp__("wxBORDER_THEME");
    public static var BORDER_NONE:Int                       = untyped __cpp__("wxBORDER_NONE");
    public static var BORDER_DOUBLE:Int                     = untyped __cpp__("wxBORDER_DOUBLE");
    public static var TRANSPARENT_WINDOW:Int                = untyped __cpp__("wxTRANSPARENT_WINDOW");
    public static var TAB_TRAVERSAL:Int                     = untyped __cpp__("wxTAB_TRAVERSAL");
    public static var WANTS_CHARS:Int                       = untyped __cpp__("wxWANTS_CHARS");
    public static var NO_FULL_REPAINT_ON_RESIZE:Int         = untyped __cpp__("wxNO_FULL_REPAINT_ON_RESIZE");
    public static var VSCROLL:Int                           = untyped __cpp__("wxVSCROLL");
    public static var HSCROLL:Int                           = untyped __cpp__("wxHSCROLL");
    public static var ALWAYS_SHOW_SB:Int                    = untyped __cpp__("wxALWAYS_SHOW_SB");
    public static var CLIP_CHILDREN:Int                     = untyped __cpp__("wxCLIP_CHILDREN");
    public static var FULL_REPAINT_ON_RESIZE:Int            = untyped __cpp__("wxFULL_REPAINT_ON_RESIZE");
}

class Window extends EvtHandler {

    private var __children:Array<Window>;
    private var __parent:Window;

    public function new(parent:Window, id:Int) {
        super();
        
        if (__children == null)
            __children = [];
        
        if (parent != null)
        {
            __parent = parent;
            __children.push(parent);
        }
    }
    
    public function getChildren() {
        return __children;
    }
    
    public function getParent() {
        return __parent;
    }
    
    public function getRoot() {
        if (getParent() != null)
            return __parent.getRoot();
        else
            return this;
    } 
    
    public function show(value:Bool) {
        _ref.show(value);
    }
    
    public function close(force:Bool = false) {
        _ref.close(force);
    }
    
    public function destroy() {
        __children = null;
        _ref.destroy();
    }
    
    public function destroyChildren():Bool {
        __children = [];
        return _ref.destroyChildren();
    }
    
    public function setSize(x:Int, y:Int, width:Int, height:Int) {
        _ref.setSize(x, y, width, height);
    }
    
    public function move(x:Int, y:Int) {
        _ref.move(x, y);
    }
    
    public function addChild(child:Window) {
        _ref.addChild(child._ref);
        __children.push(child);
    }
    
    public function removeChild(child:Window) {
        _ref.removeChild(child._ref);
        __children.splice(__children.indexOf(child), 1);
    }
    
    public function findWindowById(id:Int) {
        var winRef:WxWindowRef = _ref.findWindowById(id);
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
        var ref:WxSizeRef = _ref.getSize();
        return new Size(ref.getWidth(), ref.getHeight());
    }
    
    public function getPosition():Point {
        var ref:WxPointRef = _ref.getPosition();
        return new Point(ref.x, ref.y);
    }
    
    /*
    public var x(get, set):Int;
    private function get_x():Int {
        return getPosition().x;
    }
    private function set_x(value:Int):Int {
        setSize(value, y, width, height);
        return value;
    }
    
    public var y(get, set):Int;
    private function get_y():Int {
        return getPosition().y;
    }
    private function set_y(value:Int):Int {
        setSize(x, value, width, height);
        return value;
    }
    
    public var width(get, set):Int;
    private function get_width():Int {
        return getSize().width;
    }
    private function set_width(value:Int):Int {
        setSize(x, y, value, height);
        return value;
    }
    
    public var height(get, set):Int;
    private function get_height():Int {
        return getSize().height;
    }
    private function set_height(value:Int):Int {
        setSize(x, y, width, value);
        return value;
    }
    */
    
    public function setVirtualSize(width:Int, height:Int) {
        _ref.setVirtualSize(width, height);
    }
    
    public function getVirtualSize():Size {
        var ref:WxSizeRef = _ref.getVirtualSize();
        return new Size(ref.getWidth(), ref.getHeight());
    }
    
    public function setClientSize(width:Int, height:Int) {
        _ref.setClientSize(width, height);
    }
    
    public function getClientSize() {
        var ref:WxSizeRef = _ref.getClientSize();
        return new Size(ref.getWidth(), ref.getHeight());
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // STATIC HELPERS
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private static var nullWindowRef(get, null):WxWindowRef;
    private static inline function get_nullWindowRef():WxWindowRef {
        return cast 0;
    }
    
}

@:include("wx/window.h")
@:unreflective
@:native("wxWindow*")
extern class WxWindowRef extends WxWindow {
    @:native("new wxWindow")            public static function createInstance():WxWindowRef;
}

@:include("wx/window.h")
@:unreflective
@:native("wxWindow")
extern class WxWindow extends WxEvtHandler {
    @:native("Show")                    public function show(value:Bool):Void;
    @:native("Close")                   public function close(force:Bool):Bool;
    @:native("Destroy")                 public function destroy():Bool;
    @:native("DestroyChildren")         public function destroyChildren():Bool;
    @:native("Refresh")                 public function refresh():Void;
    @:native("SetSize")                 public function setSize(x:Int, y:Int, width:Int, height:Int):Void;
    @:native("SetClientSize")           public function setClientSize(width:Int, height:Int):Void;
    @:native("GetClientSize")           public function getClientSize():WxSizeRef;
    @:native("Move")                    public function move(x:Int, y:Int):Void;
    @:native("AddChild")                public function addChild(child:WxWindowRef):Void;
    @:native("RemoveChild")             public function removeChild(child:WxWindowRef):Void;
    @:native("FindWindow")              public function findWindowById(id:Int):WxWindowRef;
    @:native("GetBackgroundColour")     public function getBackgroundColour():Int;
    @:native("SetBackgroundColour")     public function setBackgroundColour(colour:Int):Void;
    @:native("GetWindowStyle")          public function getWindowStyle():Int;
    @:native("SetWindowStyle")          public function setWindowStyle(style:Int):Void;
    @:native("GetSize")                 public function getSize():WxSizeRef;
    @:native("GetPosition")             public function getPosition():WxPointRef;
    @:native("SetVirtualSize")          public function setVirtualSize(width:Int, height:Int):Void;
    @:native("GetVirtualSize")          public function getVirtualSize():WxSizeRef;
}

@:access(hx.widgets.Window)
class RepositioningGuard {
    private var _ref:WxChildrenRepositioningGuardRef;

    public function new(win:Window) {
        _ref = WxChildrenRepositioningGuardRef.createInstance(win._ref);
    }
}

@:include("wx/window.h")
@:unreflective
@:native("wxWindow::ChildrenRepositioningGuard*")
extern class WxChildrenRepositioningGuardRef {
    @:native("new wxWindow::ChildrenRepositioningGuard") public static function createInstance(win:WxWindowRef):WxChildrenRepositioningGuardRef;
}