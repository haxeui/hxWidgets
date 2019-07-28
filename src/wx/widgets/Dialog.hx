package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dialog.h")
@:unreflective
@:native("wxDialog")
@:structAccess
extern class Dialog extends TopLevelWindow {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxDialog")                private static function _new():RawPointer<Dialog>;
                                            public static inline function createInstance():Pointer<Dialog> {
                                                return Pointer.fromRaw(_new());
                                            }

    @:native("Create")                      @:overload(function(parent:RawPointer<Window>, id:Int, title:WxString, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                      override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("ShowModal")                   public function showModal():Int;
    @:native("EndModal")                    public function endModal(retCode:Int):Void;
    @:native("IsModal")                     public function isModal():Bool;
    @:native("AddMainButtonId")             public function addMainButtonId(id:Int):Void;
    @:native("CreateSeparatedButtonSizer")  public function createSeparatedButtonSizer(flags:Int):RawPointer<Sizer>;
    @:native("CreateStdDialogButtonSizer")  public function createStdDialogButtonSizer(flags:Int):RawPointer<StdDialogButtonSizer>;
}
