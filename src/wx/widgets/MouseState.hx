package wx.widgets;

interface MouseState {
    @:native("GetX")               public function getX():Int;
    @:native("GetY")               public function getY():Int;
}
