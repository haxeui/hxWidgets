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
    @:native("SetMarginType")           public function setMarginType(margin:Int, type:Int):Void;
    @:native("GetMarginWidth")          public function getMarginWidth(margin:Int):Int;
    @:native("SetLexer")                public function setLexer(lexer:Int):Void;
    @:native("GetLexer")                public function getLexer():Int;
    @:native("SetLexerLanguage")        public function setLexerLanguage(value:WxString):Void;
    @:native("GetLexerLanguage")        public function getLexerLanguage():WxString;
    @:native("StyleSetForeground")      public function styleSetForeground(style:Int, fore:Colour):Void;
    @:native("StyleSetBackground")      public function styleSetBackground(style:Int, back:Colour):Void;
    @:native("StyleSetBold")            public function styleSetBold(style:Int, bold:Bool):Void;
    @:native("StyleSetSize")            public function styleSetSize(style:Int, sizePoints:Int):Void;
    @:native("StyleSetFaceName")        public function styleSetFaceName(style:Int, fontName:WxString):Void;
    @:native("StyleClearAll")           public function styleClearAll():Void;
    #if (PLATFORM_WINDOWS && wxWidgetsVersion > version("3.0.0"))
    @:native("StartStyling")            public function startStyling(pos:Int):Void;
    #else
    @:native("StartStyling")            public function startStyling(pos:Int, mask:Int):Void;
    #end
    @:native("SetStyling")              public function setStyling(length:Int, style:Int):Void;
    @:native("SetWhitespaceForeground") public function setWhitespaceForeground(useSetting:Bool, fore:Colour):Void;
    @:native("SetWhitespaceBackground") public function setWhitespaceBackground(useSetting:Bool, back:Colour):Void;
    @:native("SetCaretForeground")      public function setCaretForeground(fore:Colour):Void;
    @:native("SetSelForeground")        public function setSelForeground(useSetting:Bool, fore:Colour):Void;
    @:native("SetSelBackground")        public function setSelBackground(useSetting:Bool, back:Colour):Void;
    @:native("TextWidth")               public function textWidth(style:Int, text:WxString):Int;
    @:native("GetLineCount")            public function getLineCount():Int;
    @:native("SetMargins")              public function setMargins(left:Int, right:Int):Void;
    @:native("GetCurrentLine")          public function getCurrentLine():Int;
    @:native("GetCurrentPos")           public function getCurrentPos():Int;
    @:native("GetColumn")               public function getColumn(pos:Int):Int;
}