package wx.widgets;

@:include("wx/event.h")
@:unreflective
@:native("wxKeyEvent")
@:structAccess
extern class KeyEvent extends Event {
    @:native("GetKeyCode")  public function getKeyCode():Int;
    @:native("ShiftDown")   public function shiftDown():Bool;
    @:native("ControlDown") public function controlDown():Bool;
    @:native("AltDown")     public function altDown():Bool;
    @:native("MetaDown")    public function metaDown():Bool;
}