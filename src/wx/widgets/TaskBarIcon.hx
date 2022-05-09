package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/taskbar.h")
@:unreflective
@:native("wxTaskBarIcon")
@:structAccess
extern class TaskBarIcon extends EvtHandler {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxTaskBarIcon")       private static function _new():RawPointer<TaskBarIcon>;
                                        public static inline function createInstance():Pointer<TaskBarIcon> {
                                            return Pointer.fromRaw(_new());
                                        }
                                        
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("IsIconInstalled")         public function isIconInstalled():Bool;
    #if ((wxMAJOR_VERSION >= 3) && (wxMINOR_VERSION >= 1) && (wxRELEASE_NUMBER >= 6))
    @:native("SetIcon")                 public function setIcon(icon:Reference<BitmapBundle>, tooltip:WxString):Void;
    #else
    @:native("SetIcon")                 public function setIcon(icon:Reference<Icon>, tooltip:WxString):Void;
    #end
}