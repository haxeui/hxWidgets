package wx.widgets;

extern interface ItemContainerImmutable {
    @:native("SetString")                public function setString(n:Int, string:WxString):Void;
    @:native("GetString")                public function getString(n:Int):WxString;
}