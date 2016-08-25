package wx.widgets;

extern interface ItemContainer extends ItemContainerImmutable {
    @:native("Append")                public function append(string:WxString):Int;
}