package hx.widgets;

import cpp.Pointer;
import wx.widgets.StyledTextCtrl in WxStyledTextCtrl;
import wx.widgets.WxString;
import wx.widgets.Colour in WxColour;

class StyledTextCtrl extends Control {
    
    public function new(parent:Window, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxStyledTextCtrl.createInstance().reinterpret();
            styledTextCtrlRef.ptr.create(Window.toRaw(parent), id, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Instance functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
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
    
    @:access(hx.widgets.Colour)
    public function styleSetForeground(style:Int, value:Int) {
        var temp:Pointer<WxColour> = WxColour.createInstance(Colour.convertColor(value));
        styledTextCtrlRef.ptr.styleSetForeground(style, temp.ref);
        temp.destroy();
    }
    
    public function styleClearAll() {
        styledTextCtrlRef.ptr.styleClearAll();
    }
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var styledTextCtrlRef(get, null):Pointer<WxStyledTextCtrl>;
    private function get_styledTextCtrlRef():Pointer<WxStyledTextCtrl> {
        return _ref.reinterpret();
    }
}