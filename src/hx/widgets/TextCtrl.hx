package hx.widgets;

import cpp.Pointer;
import wx.widgets.TextCtrl in WxTextCtrl;
import wx.widgets.Point in WxPoint;
import wx.widgets.WxString;


 @:access(hx.widgets.ArrayString)
class TextCtrl extends Control implements TextEntry {

    public function new(parent:Window, text:String = null, style:Int = 0, id:Int = -1) {
        if (_ref == null) {
            _ref = WxTextCtrl.createInstance().reinterpret();
            var str = WxString.fromUTF8(text);
            textCtrlRef.ptr.create(Window.toRaw(parent), id, str, Point.defaultPosition.ref, Size.defaultSize.ref, style);
        }

        super(parent, id);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // WxTextEntry functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    public function appendText(value:String) {
        var s = WxString.fromUTF8(value);
        textCtrlRef.ptr.appendText(s);
    }
    
    public function autoComplete(choices:Array<String>) {
    	var choicesArr:ArrayString = ArrayString.fromArray(choices);
    	textCtrlRef.ptr.autoComplete(choicesArr.arraystringRef.ref);
        choicesArr.destroy();
    }
    
    public function canCopy():Bool {
        return textCtrlRef.ptr.canCopy();
    }
    
    public function canCut():Bool {
        return textCtrlRef.ptr.canCut();
    }
    
    public function canPaste():Bool {
        return textCtrlRef.ptr.canPaste();
    }
    
    public function canRedo():Bool {
        return textCtrlRef.ptr.canRedo();
    }
    
    public function canUndo():Bool {
        return textCtrlRef.ptr.canUndo();
    }
    
    public function changeValue(value:String):String {
        var s = WxString.fromUTF8(value);
        textCtrlRef.ptr.changeValue(s);
        return value;
    }
    
    public function clear() {
        textCtrlRef.ptr.clear();
    }
    
    public function copy() {
        textCtrlRef.ptr.copy();
    }
    
    public function cut() {
        textCtrlRef.ptr.cut();
    }
    
    #if (wxWidgetsVersion >= version("3.1.0")) 
    public function forceUpper() {
        textCtrlRef.ptr.forceUpper();
    }
    #end

    public var insertionPoint(get, set):Int;
    private function get_insertionPoint():Int {
        return textCtrlRef.ptr.getInsertionPoint();
    }
    private function set_insertionPoint(value:Int):Int {
        textCtrlRef.ptr.setInsertionPoint(value);
        return value;
    }
        
        
    public var margins(get, set):Point;
    private function get_margins():Point {
        return Point.copy(textCtrlRef.ptr.getMargins());
    }
    private function set_margins(pt:Point):Point {
    	var temp:Pointer<WxPoint> = pt.createPointer();
        textCtrlRef.ptr.setMargins(temp.ref);
        temp.destroy();
        return margins;
    }
    
    public function getRange(from:Int, to:Int):String {
        var r:WxString = textCtrlRef.ptr.getRange(from, to);
        return new String(r.toUTF8().data());
    }    

    public var value(get, set):String;
    private function get_value():String {
        var r:WxString = textCtrlRef.ptr.getValue();
        return new String(r.toUTF8().data());
    }
    private function set_value(value:String):String {
        var s = WxString.fromUTF8(value);
        textCtrlRef.ptr.setValue(s);
        return value;
    }
    
    public var selection(get, set):{start:Int, end:Int};
    private function get_selection():{start:Int, end:Int} {
    	var start:Long = cast 0;
    	var end:Long = cast 0;
    	var startPtr = Pointer.addressOf(start).raw;
    	var endPtr = Pointer.addressOf(end).raw;
    	
        textCtrlRef.ptr.getSelection(startPtr, endPtr);
        return {start: cast start, end: cast end};
    }
    private function set_selection(sel:{start:Int, end:Int}):{start:Int, end:Int} {
        textCtrlRef.ptr.setSelection(sel.start, sel.end);
        return sel;
    }
    
    public var stringSelection(get, null):String;
    private function get_stringSelection():String {
    	var r:WxString = textCtrlRef.ptr.getStringSelection();
        return new String(r.toUTF8().data());
    }
  
    
    public var editable(get, set):Bool;
    private function get_editable():Bool {
        return textCtrlRef.ptr.isEditable();
    }
    private function set_editable(b:Bool):Bool {
    	textCtrlRef.ptr.setEditable(b);
        return b;
    }
    
    public function isEmpty():Bool {
        return textCtrlRef.ptr.isEmpty();
    }
    
    public function paste() {
        return textCtrlRef.ptr.paste();
    }
    
    public function redo() {
        return textCtrlRef.ptr.redo();
    }
    
    public function remove(from:Int, to:Int) {
        return textCtrlRef.ptr.remove(from,to);
    }
    
    public function replace(from:Int, to:Int, value:String) {
    	var s = WxString.fromUTF8(value);
        return textCtrlRef.ptr.replace(from,to,s);
    }
        
    public function selectAll():Void {
    	textCtrlRef.ptr.selectAll();
    }
    
    public function selectNone():Void {
    	textCtrlRef.ptr.selectNone();
    }

    public var hint(get, set):String;
    private function get_hint():String {
        var r:WxString = textCtrlRef.ptr.getHint();
        return new String(r.toUTF8().data());
    }
    private function set_hint(value:String):String {
        var s = WxString.fromUTF8(value);
        textCtrlRef.ptr.setHint(s);
        return value;
    }
    
    public var maxLength(default, set):Int;
    public function set_maxLength(len:Int):Int {
    	textCtrlRef.ptr.setMaxLength(len);
    	maxLength = len;
    	return len;
    }
    
    public function undo():Void {
    	textCtrlRef.ptr.undo();
    }
    
    public function writeText(value:String) {
        var s = WxString.fromUTF8(value);
        textCtrlRef.ptr.writeText(s);
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var textCtrlRef(get, null):Pointer<WxTextCtrl>;
    private function get_textCtrlRef():Pointer<WxTextCtrl> {
        return _ref.reinterpret();
    }

}
