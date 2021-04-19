package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.styles.BackgroundStyle;
import wx.widgets.styles.ShowEffect;

@:include("wx/window.h")
@:unreflective
@:native("wxWindow")
@:structAccess
extern class Window extends EvtHandler {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxWindow")                    private static function _new():RawPointer<Window>;
                                                public static inline function createInstance():Pointer<Window> {
                                                    return Pointer.fromRaw(_new());
                                                }

    @:native("Create")                          public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Window status functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Show")                            public function show(value:Bool = true):Bool;
    @:native("Hide")                            public function hide():Bool;
    @:native("Enable")                          public function enable(enabled:Bool = true):Bool;
    @:native("IsEnabled")                       public function isEnabled():Bool;
    @:native("IsShown")                         public function isShown():Bool;
    @:native("ShowWithEffect")                  public function showWithEffect(effect:ShowEffect, timeout:Int = 0):Bool;
    @:native("HideWithEffect")                  public function hideWithEffect(effect:ShowEffect, timeout:Int = 0):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Window deletion functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Close")                           public function close(force:Bool = false):Bool;
    @:native("Destroy")                         public function destroy():Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Child management functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("DestroyChildren")                 public function destroyChildren():Bool;
    @:native("FindWindow")                      public function findWindowById(id:Int):RawPointer<Window>;
    @:native("GetChildren")                     public function getChildren():WindowList;
    @:native("AddChild")                        public function addChild(child:RawPointer<Window>):Void;
    @:native("RemoveChild")                     public function removeChild(child:RawPointer<Window>):Void;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Sibling and parent management functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetParent")                       public function getParent():RawPointer<Window>;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Drawing-related functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Refresh")                         public function refresh(eraseBackground:Bool = true):Void;
    @:native("RefreshRect")                     public function refreshRect(rect:Rect, eraseBackground:Bool = true):Void;
    @:native("Update")                          public function update():Void;
    @:native("GetBackgroundColour")             public function getBackgroundColour():Colour;
    @:native("SetBackgroundColour")             public function setBackgroundColour(colour:Colour):Bool;
    @:native("GetForegroundColour")             public function getForegroundColour():Colour;
    @:native("SetForegroundColour")             public function setForegroundColour(colour:Colour):Bool;
    @:native("GetFont")                         public function getFont():Font;
    @:native("SetFont")                         public function setFont(font:Font):Bool;
    @:native("Freeze")                          public function freeze():Void;
    @:native("Thaw")                            public function thaw():Void;
    @:native("IsFrozen")                        public function isFrozen():Bool;
    @:native("GetBackgroundStyle")              public function getBackgroundStyle():BackgroundStyle;
    @:native("SetBackgroundStyle")              public function setBackgroundStyle(style:BackgroundStyle):Void;
    @:native("CanSetTransparent")               public function canSetTransparent():Bool;
    @:native("SetTransparent")                  public function setTransparent(alpha:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Sizing functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("BeginRepositioningChildren")      public function beginRepositioningChildren():Bool;
    @:native("EndRepositioningChildren")        public function endRepositioningChildren():Void;
    @:native("Fit")                             public function fit():Void;
    @:native("GetSize")                         public function getSize():Size;
    @:native("SetSize")                         @:overload(function(width:Int, height:Int):Void {})
    @:native("SetSize")                         public function setSize(size:Size):Void;
    @:native("GetClientSize")                   public function getClientSize():Size;
    @:native("SetClientSize")                   @:overload(function(width:Int, height:Int):Void {})
    @:native("SetClientSize")                   public function setClientSize(size:Size):Void;
    @:native("GetMinSize")                      public function getMinSize():Size;
    @:native("SetMinSize")                      @:overload(function(width:Int, height:Int):Void {})
    @:native("SetMinSize")                      public function setMinSize(size:Size):Void;
    @:native("GetMinClientSize")                public function getMinClientSize():Size;
    @:native("SetMinClientSize")                @:overload(function(width:Int, height:Int):Void {})
    @:native("SetMinClientSize")                public function setMinClientSize(size:Size):Void;
    @:native("GetMaxSize")                      public function getMaxSize():Size;
    @:native("SetMaxSize")                      @:overload(function(width:Int, height:Int):Void {})
    @:native("SetMaxSize")                      public function setMaxSize(size:Size):Void;
    @:native("GetMaxClientSize")                public function getMaxClientSize():Size;
    @:native("SetMaxClientSize")                @:overload(function(width:Int, height:Int):Void {})
    @:native("SetMaxClientSize")                public function setMaxClientSize(size:Size):Void;
    @:native("GetBestSize")                     public function getBestSize():Size;
    @:native("GetVirtualSize")                  public function getVirtualSize():Size;
    @:native("SetVirtualSize")                  @:overload(function(width:Int, height:Int):Void {})
    @:native("SetVirtualSize")                  public function setVirtualSize(size:Size):Void;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Positioning functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Move")                            public function move(x:Int, y:Int):Void;
    @:native("GetPosition")                     public function getPosition():Point;
    @:native("SetPosition")                     public function setPosition(pos:Point):Void;
    @:native("CenterOnParent")                  public function centerOnParent():Void;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Window styles functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetWindowStyle")                  public function getWindowStyle():Int;
    @:native("SetWindowStyle")                  public function setWindowStyle(style:Int):Void;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Window properties functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetId")                           public function getId():Int;
    @:native("SetId")                           public function setId(id:Int):Void;
    @:native("GetWindowVariant")                public function getWindowVariant():WindowVariant;
    @:native("SetWindowVariant")                public function setWindowVariant(variant:WindowVariant):Void;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Scrolling and scrollbars functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetScrollPos")                    public function getScrollPos(orientation:Orientation):Int;
    @:native("SetScrollPos")                    public function setScrollPos(orientation:Orientation, pos:Int, refresh:Bool = true):Void;
    @:native("GetScrollRange")                  public function getScrollRange(orientation:Orientation):Int;
    @:native("GetScrollThumb")                  public function getScrollThumb(orientation:Orientation):Int;
    @:native("ScrollLines")                     public function scrollLines(lines:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Constraints, sizers and window layout functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetSizer")                        public function getSizer():RawPointer<Sizer>;
    @:native("SetSizer")                        public function setSizer(sizer:RawPointer<Sizer>, deleteOld:Bool = true):Void;
    @:native("SetSizerAndFit")                  public function setSizerAndFit(sizer:RawPointer<Sizer>, deleteOld:Bool = true):Void;
    @:native("Layout")                          public function layout():Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Event handling functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetEventHandler")                  public function getEventHandler():RawPointer<EvtHandler>;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Popup/context menu functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("PopupMenu")                        public function popupMenu(menu:RawPointer<Menu>):Bool;
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Coordinate conversion functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("ClientToScreen")                  public function clientToScreen(pt:Point):Point;
    @:native("ScreenToClient")                  public function screenToClient(pt:Point):Point;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Tooltips
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetToolTip")                      public function setToolTip(value:WxString):Void;
    @:native("GetToolTipText")                  public function getToolTipText():WxString;
    @:native("UnsetToolTip")                    public function unsetToolTip():Void;
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Misc functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetClassInfo")                    public function getClassInfo():Pointer<ClassInfo>; //TODO should be in wxObject
    @:native("HitTest")                         public function hitTest(pt:Point):HitTest; //TODO should be in wxObject
}

@:include("wx/list.h")
@:unreflective
@:structAccess
@:native("wxWindowList")
extern class WindowList {

    @:native("GetCount")          public function getCount():Int;
    @:native("Item")              public function item(index:Int):WindowListNode;

}

@:include("wx/list.h")
@:unreflective
@:native("wxWindowList::compatibility_iterator")
extern class WindowListNode {

    @:native("GetData")            public function getData():RawPointer<Window>;

}