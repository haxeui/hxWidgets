package hx.widgets;
import wx.widgets.styles.StyledTextControlStyle;

#if STYLEDTEXTCTRL

import cpp.Pointer;
import wx.widgets.StyledTextCtrl in WxStyledTextCtrl;
import wx.widgets.WxString;
import wx.widgets.Colour in WxColour;

#end

class StyledTextCtrl extends Control {
    
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        #if STYLEDTEXTCTRL
        
        if (_ref == null) {
            _ref = WxStyledTextCtrl.createInstance().reinterpret();
            styledTextCtrlRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        #end
        
        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    #if STYLEDTEXTCTRL
    
    public var currentLine(get, null):Int;
    private function get_currentLine():Int {
        return styledTextCtrlRef.ptr.getCurrentLine();
    }
    
    public var currentPos(get, null):Int;
    private function get_currentPos():Int {
        return styledTextCtrlRef.ptr.getCurrentPos();
    }
    
    public var currentColumn(get, null):Int;
    private function get_currentColumn():Int {
        return getColumn(styledTextCtrlRef.ptr.getCurrentPos());
    }
    
    public function getColumn(pos:Int):Int {
        return styledTextCtrlRef.ptr.getColumn(pos);
    }
    
    public var text(get, set):String;
    private function get_text():String {
        var r:WxString = styledTextCtrlRef.ptr.getText();
        return new String(r.toUTF8().data());
    }
    private function set_text(value:String):String {
        var s = WxString.fromUTF8(value);
        styledTextCtrlRef.ptr.setText(s);
        return value;
    }
    
    public function setMarginWidth(margin:Int, pixelWidth:Int) {
        styledTextCtrlRef.ptr.setMarginWidth(margin, pixelWidth);
    }
    
    public function setMarginType(margin:Int, type:Int) {
        styledTextCtrlRef.ptr.setMarginType(margin, type);
    }
    
    public function getMarginWidth(margin:Int) {
        return styledTextCtrlRef.ptr.getMarginWidth(margin);
    }
    
    public var lexer(get, set):Int;
    private function get_lexer():Int {
        return styledTextCtrlRef.ptr.getLexer();
    }
    private function set_lexer(value:Int):Int {
        styledTextCtrlRef.ptr.setLexer(value);
        return value;
    }

    public var lexerLanguage(get, set):String;
    private function get_lexerLanguage():String {
        var r:WxString = styledTextCtrlRef.ptr.getLexerLanguage();
        return new String(r.toUTF8().data());
    }
    private function set_lexerLanguage(value:String):String {
        var s = WxString.fromUTF8(value);
        styledTextCtrlRef.ptr.setLexerLanguage(s);
        return value;
    }
    
    public function styleSetForeground(style:Int, value:Int) {
        var temp:Pointer<WxColour> = WxColour.createInstance(Colour.convertColor(value));
        styledTextCtrlRef.ptr.styleSetForeground(style, temp.ref);
        temp.destroy();
    }
    
    public function styleSetBackground(style:Int, value:Int) {
        var temp:Pointer<WxColour> = WxColour.createInstance(Colour.convertColor(value));
        styledTextCtrlRef.ptr.styleSetBackground(style, temp.ref);
        temp.destroy();
    }
    
    public function setWhitespaceForeground(useSetting:Bool, value:Int) {
        var temp:Pointer<WxColour> = WxColour.createInstance(Colour.convertColor(value));
        styledTextCtrlRef.ptr.setWhitespaceForeground(useSetting, temp.ref);
        temp.destroy();
    }
    
    public function setWhitespaceBackground(useSetting:Bool, value:Int) {
        var temp:Pointer<WxColour> = WxColour.createInstance(Colour.convertColor(value));
        styledTextCtrlRef.ptr.setWhitespaceBackground(useSetting, temp.ref);
        temp.destroy();
    }
    
    public function setSelForeground(useSetting:Bool, value:Int) {
        var temp:Pointer<WxColour> = WxColour.createInstance(Colour.convertColor(value));
        styledTextCtrlRef.ptr.setSelForeground(useSetting, temp.ref);
        temp.destroy();
    }
    
    public function setSelBackground(useSetting:Bool, value:Int) {
        var temp:Pointer<WxColour> = WxColour.createInstance(Colour.convertColor(value));
        styledTextCtrlRef.ptr.setSelBackground(useSetting, temp.ref);
        temp.destroy();
    }
    
    public var caretForeground(null, set):Int;
    private function set_caretForeground(value:Int):Int {
        var temp:Pointer<WxColour> = WxColour.createInstance(Colour.convertColor(value));
        styledTextCtrlRef.ptr.setCaretForeground(temp.ref);
        temp.destroy();
        return value;
    }
    
    public function styleSetBold(style:Int, value:Bool) {
        styledTextCtrlRef.ptr.styleSetBold(style, value);
    }
    
    public function styleSetSize(style:Int, value:Int) {
        styledTextCtrlRef.ptr.styleSetSize(style, value);
    }
    
    public function styleSetFaceName(style:Int, value:String) {
        var s = WxString.fromUTF8(value);
        styledTextCtrlRef.ptr.styleSetFaceName(style, s);
    }
    
    public function textWidth(style:Int, text:String):Int {
        var s = WxString.fromUTF8(text);
        return styledTextCtrlRef.ptr.textWidth(style, s);
    }
    
    public function styleClearAll() {
        styledTextCtrlRef.ptr.styleClearAll();
    }
    
    #if (PLATFORM_WINDOWS && wxWidgetsVersion > version("3.0.0"))
    public function startStyling(pos:Int) {
        styledTextCtrlRef.ptr.startStyling(pos);
    }
    #else
    public function startStyling(pos:Int, mask:Int) {
        styledTextCtrlRef.ptr.startStyling(pos, mask);
    }
    #end
    
    public function setStyling(length:Int, style:Int) {
        styledTextCtrlRef.ptr.setStyling(length, style);
    }
    
    private override function set_backgroundColour(value:Null<Int>):Null<Int> {
        var temp:Pointer<WxColour> = WxColour.createInstance(Colour.convertColor(value));
        styledTextCtrlRef.ptr.styleSetBackground(StyledTextControlStyle.DEFAULT, temp.ref);
        styleClearAll();
        temp.destroy();
        return value;
    }
    
    public var lineCount(get, null):Int;
    private function get_lineCount():Int {
        return styledTextCtrlRef.ptr.getLineCount();
    }
    
    public function setMargins(left:Int, right:Int) {
        styledTextCtrlRef.ptr.setMargins(left, right);
    }
    
    #end
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    #if STYLEDTEXTCTRL
    
    private var styledTextCtrlRef(get, null):Pointer<WxStyledTextCtrl>;
    private function get_styledTextCtrlRef():Pointer<WxStyledTextCtrl> {
        return _ref.reinterpret();
    }
    
    #end
}