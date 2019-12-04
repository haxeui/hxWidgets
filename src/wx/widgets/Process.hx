package wx.widgets;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/process.h")
@:unreflective
@:native("wxProcess")
extern class Process extends EvtHandler {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxProcess")           private static function _new(id:Int = -1):RawPointer<Process>;
                                        public static inline function createInstance(id:Int = -1):Pointer<Process> {
                                            return Pointer.fromRaw(_new(id));
                                        }
                                        
    @:native("wxProcess::Open")         public static function open(cmd:WxString):RawPointer<Process>;                                        
                                        
    @:native("Redirect")                public function redirect():Void;
    @:native("GetInputStream")          public function getInputStream():RawPointer<InputStream>;
    @:native("IsInputAvailable")        public function isInputAvailable():Bool;
    @:native("IsInputOpened")           public function isInputOpened():Bool;
}