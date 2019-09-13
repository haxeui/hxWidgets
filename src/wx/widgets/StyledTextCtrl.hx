package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/stc/stc.h")
@:unreflective
@:native("wxStyledTextCtrl")
@:structAccess
extern class StyledTextCtrl extends Control {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxStyledTextCtrl")    private static function _new():RawPointer<StyledTextCtrl>;
                                        public static inline function createInstance():Pointer<StyledTextCtrl> {
                                            return Pointer.fromRaw(_new());
                                        }
                                        
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetText")                 public function setText(value:WxString):Void;
    @:native("GetText")                 public function getText():WxString;
    @:native("SetMarginWidth")          public function setMarginWidth(margin:Int, pixelWidth:Int):Void;
    @:native("GetMarginWidth")          public function getMarginWidth(margin:Int):Int;
    @:native("SetLexer")                public function setLexer(lexer:Int):Void;
    @:native("GetLexer")                public function getLexer():Int;
    @:native("SetLexerLanguage")        public function setLexerLanguage(value:WxString):Void;
    @:native("GetLexerLanguage")        public function getLexerLanguage():WxString;
    @:native("StyleSetForeground")      public function styleSetForeground(style:Int, fore:Colour):Void;
    @:native("StyleClearAll")           public function styleClearAll():Void;
}