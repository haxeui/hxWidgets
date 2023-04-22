package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

@:include("wx/textctrl.h")
@:unreflective
@:native("wxTextCtrl")
@:structAccess
extern class TextCtrl extends Control implements TextEntry {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxTextCtrl")          private static function _new():RawPointer<TextCtrl>;
                                        public static inline function createInstance():Pointer<TextCtrl> {
                                            return Pointer.fromRaw(_new());
                                        }

    @:native("Create")                  @:overload(function(parent:RawPointer<Window>, id:Int, value:WxString, point:Point, size:Size, style:Int):Bool {})
    @:native("Create")                  override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // WxTextEntry functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("AppendText")          public function appendText(value:WxString):Void;
    @:native("AutoComplete")        public function autoComplete(choices:Reference<ArrayString>):Bool;
    @:native("CanCopy")             public function canCopy():Bool;
    @:native("CanCut")              public function canCut():Bool;
    @:native("CanPaste")            public function canPaste():Bool;
    @:native("CanRedo")             public function canRedo():Bool;
    @:native("CanUndo")             public function canUndo():Bool;
    @:native("ChangeValue")         public function changeValue(value:WxString):Void;
    @:native("Clear")               public function clear():Void;
    @:native("Copy")                public function copy():Void;
    @:native("Cut")                 public function cut():Void;
    #if (wxWidgetsVersion >= version("3.1.0")) 
    @:native("ForceUpper")          public function forceUpper():Void;
    #end
    @:native("GetInsertionPoint")   public function getInsertionPoint():Int;
    @:native("SetInsertionPoint")   public function setInsertionPoint(value:Int):Void;
    @:native("GetMargins")          public function getMargins():Point;
    @:native("SetMargins")          public function setMargins(pt:Point):Bool;
    @:native("GetRange")            public function getRange(from:Int, to:Int):WxString;
    @:native("GetSelection")        public function getSelection(from:RawPointer<Long>, to:RawPointer<Long>):Void;
    @:native("SetSelection")        public function setSelection(from:Int, to:Int):Void;
    @:native("GetStringSelection")  public function getStringSelection():WxString;
    @:native("SetValue")            public function setValue(value:WxString):Void;
    @:native("GetValue")            public function getValue():WxString;
    @:native("IsEditable")          public function isEditable():Bool;
    @:native("SetEditable")         public function setEditable(editable:Bool):Void;
    @:native("IsEmpty")             public function isEmpty():Bool;
    @:native("Paste")               public function paste():Void;
    @:native("Redo")                public function redo():Void;
    @:native("Remove")              public function remove(from:Int, to:Int):Void;
    @:native("Replace")             public function replace(from:Int, to:Int, value:WxString):Void;
    @:native("SelectNone")          public function selectNone():Void;
    @:native("SelectAll")           public function selectAll():Void;
    @:native("SetHint")             public function setHint(value:WxString):Void;
    @:native("GetHint")             public function getHint():WxString;
    @:native("SetMaxLength")        public function setMaxLength(len:Int):Void;
    @:native("Undo")                public function undo():Void;
    @:native("WriteText")           public function writeText(value:WxString):Void;
}
