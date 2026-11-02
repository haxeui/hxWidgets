package hx.widgets;

import cpp.Pointer;
import wx.widgets.KeyEvent as WxKeyEvent;

class KeyEvent extends Event {
    public var keyCode(get, never):Int;
    private function get_keyCode():Int {
        return keyEventRef.ptr.getKeyCode();
    }

    public var shiftDown(get, never):Bool;
    private function get_shiftDown():Bool {
        return keyEventRef.ptr.shiftDown();
    }

    public var controlDown(get, never):Bool;
    private function get_controlDown():Bool {
        return keyEventRef.ptr.controlDown();
    }

    public var altDown(get, never):Bool;
    private function get_altDown():Bool {
        return keyEventRef.ptr.altDown();
    }

    public var metaDown(get, never):Bool;
    private function get_metaDown():Bool {
        return keyEventRef.ptr.metaDown();
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var keyEventRef(get, never):Pointer<WxKeyEvent>;
    private function get_keyEventRef():Pointer<WxKeyEvent> {
        return _ref.reinterpret();
    }
}