package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;
import wx.widgets.styles.BackgroundStyle;

@:include("wx/window.h")
@:unreflective
@:native("wxWindow")
extern class Window {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxWindow")                    private static function _new():RawPointer<Window>;
                                                public static inline function createInstance():Pointer<Window> return Pointer.fromRaw(_new());
    
    @:native("Create")                          public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Window status functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Show")                            public function show(value:Bool = true):Bool;
    @:native("Hide")                            public function hide():Bool;
    
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
    @:native("SetBackgroundColour")             public function setBackgroundColour(colour:Colour):Void;
    @:native("GetForegroundColour")             public function getForegroundColour():Colour;
    @:native("SetForegroundColour")             public function setForegroundColour(colour:Colour):Void;
    @:native("GetFont")                         public function getFont():Font;
    @:native("SetFont")                         public function setFont(font:Font):Void;
    @:native("Freeze")                          public function freeze():Void;
    @:native("Thaw")                            public function thaw():Void;
    @:native("IsFrozen")                        public function isFrozen():Bool;
    @:native("GetBackgroundStyle")              public function getBackgroundStyle():BackgroundStyle;
    @:native("SetBackgroundStyle")              public function setBackgroundStyle(style:BackgroundStyle):Void;
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Sizing functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("BeginRepositioningChildren")      public function beginRepositioningChildren():Bool;
    @:native("EndRepositioningChildren")        public function endRepositioningChildren():Void;
    @:native("GetSize")                         public function getSize():Size;
    @:native("SetSize")                         @:overload(function(width:Int, height:Int):Void {})
    @:native("SetSize")                         public function setSize(size:Size):Void;
    @:native("GetClientSize")                   public function getClientSize():Size;
    @:native("SetClientSize")                   @:overload(function(width:Int, height:Int):Void {})
    @:native("SetClientSize")                   public function setClientSize(size:Size):Void;
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
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Scrolling and scrollbars functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetScrollPos")                    public function getScrollPos(orientation:Int):Int;
    @:native("GetScrollRange")                  public function getScrollRange(orientation:Int):Int;
    @:native("GetScrollThumb")                  public function getScrollThumb(orientation:Int):Int;
    @:native("SetScrollPos")                    public function setScrollPos(orientation:Int, pos:Int, refresh:Bool = true):Void;
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Misc functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("GetClassInfo")                    public function getClassInfo():Pointer<ClassInfo>;
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

/*
import cpp.ConstCharStar;
import wx.widgets.Font.FontImpl;
import wx.widgets.List.WindowList;
import wx.widgets.styles.BackgroundStyle;

@:include("wx/window.h")
@:unreflective
@:native("cpp::Reference<wxWindow>")
extern class Window extends WindowImpl {
    @:native("new wxWindow")            public static function createInstance():Window;
}

@:include("wx/window.h")
@:unreflective
@:native("wxWindow")
extern class WindowImpl extends EvtHandler {
    @:native("Create")                          public function create(parent:Window, id:Int, point:Point, size:Size, style:Int):Bool;
    
    @:native("Show")                            public function show(value:Bool = true):Void;
    @:native("Close")                           public function close(force:Bool):Bool;
    @:native("Destroy")                         public function destroy():Bool;
    @:native("DestroyChildren")                 public function destroyChildren():Bool;
    
    @:native("Refresh")                         public function refresh(eraseBackground:Bool = true):Void;
    @:native("RefreshRect")                     public function refreshRect(rect:Rect, eraseBackground:Bool = true):Void;
    @:native("Update")                          public function update():Void;
    
    @:native("SetSize")                         public function setSize(width:Int, height:Int):Void;
    @:native("SetClientSize")                   public function setClientSize(width:Int, height:Int):Void;
    @:native("GetClientSize")                   public function getClientSize():Size.SizeImpl;
    @:native("GetBestSize")                     public function getBestSize():Size;
    @:native("GetMaxSize")                      public function getMaxSize():Size;
    @:native("GetMinSize")                      public function getMinSize():Size;
    @:native("GetMinClientSize")                public function getMinClientSize():Size;
    
    
    
    
    
    @:native("Move")                            public function move(x:Int, y:Int):Void;
    
    
    @:native("FindWindow")                      public function findWindowById(id:Int):Window;
    
    
    
    @:native("GetBackgroundColour")             public function getBackgroundColour():Int;
    @:native("SetBackgroundColour")             public function setBackgroundColour(colour:Int):Void;
    @:native("GetForegroundColour")             public function getForegroundColour():Int;
    @:native("SetForegroundColour")             public function setForegroundColour(colour:Int):Void;
    
    
    @:native("GetWindowStyle")                  public function getWindowStyle():Int;
    @:native("SetWindowStyle")                  public function setWindowStyle(style:Int):Void;
    
    @:native("GetSize")                         public function getSize():Size;
    
    @:native("GetPosition")                     public function getPosition():Point;
    
    @:native("SetVirtualSize")                  public function setVirtualSize(width:Int, height:Int):Void;
    @:native("GetVirtualSize")                  public function getVirtualSize():Size;
    
    @:native("GetParent")                       public function getParent():Window;
    
    
    @:native("GetId")                           public function getId():Int;
    @:native("SetId")                           public function setId(id:Int):Void;
    
    
    @:native("GetChildren")                     public function getChildren():WindowList;
    
    
    @:native("SetFont")                         public function setFont(font:Font):Void;
    @:native("Freeze")                          public function freeze():Void;
    @:native("Thaw")                            public function thaw():Void;
    @:native("IsFrozen")                        public function isFrozen():Bool;
    
    @:native("BeginRepositioningChildren")      public function beginRepositioningChildren():Bool;
    @:native("EndRepositioningChildren")        public function endRepositioningChildren():Void;
    
    @:native("GetScrollPos")                    public function getScrollPos(orientation:Int):Int;
    @:native("GetScrollRange")                  public function getScrollRange(orientation:Int):Int;
    @:native("GetScrollThumb")                  public function getScrollThumb(orientation:Int):Int;
    @:native("SetScrollPos")                    public function setScrollPos(orientation:Int, pos:Int, refresh:Bool = true):Void;
    
    @:native("GetFont")                         public function getFont():FontImpl;
    
    @:native("SetBackgroundStyle")              public function setBackgroundStyle(style:BackgroundStyle):Bool;
}
*/