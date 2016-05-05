package wx.widgets;

abstract SizerFlag(Int) {

    public static inline var NONE:SizerFlag = cast 0;

    @:from
    static inline function fromDirection(direction:Direction):SizerFlag {
        return cast direction;
    }

    @:from
    static inline function fromStretch(stretch:Stretch):SizerFlag {
        return cast stretch;
    }

    @:allow(wx.widgets.Direction)
    @:allow(wx.widgets.Stretch)
    @:op(A | B)
    static inline function orFlags(a:SizerFlag, b:SizerFlag):SizerFlag {
        return orInt(cast a, cast b);
    }

    static inline function orInt(a:Int, b:Int):SizerFlag {
        return cast (a | b);
    }

}