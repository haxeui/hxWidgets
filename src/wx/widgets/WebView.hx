package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/webview.h")
@:unreflective
@:native("wxWebView")
@:structAccess
extern class WebView extends Control {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("wxWebView::New")          private static function _new():RawPointer<WebView>;
                                        public static inline function createInstance():Pointer<WebView> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, url:WxString, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("LoadURL")                 public function loadURL(url:WxString):Void;
}