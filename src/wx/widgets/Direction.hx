package wx.widgets;

@:include("wx/defs.h")
@:unreflective
@:enum extern abstract Direction(DirectionImpl) {

    @:native("wxLEFT")   var LEFT;
    @:native("wxRIGHT")  var RIGHT;
    @:native("wxUP")     var UP;
    @:native("wxDOWN")   var DOWN;
    @:native("wxTOP")    var TOP;
    @:native("wxBOTTOM") var BOTTOM;
    @:native("wxNORTH")  var NORTH;
    @:native("wxSOUTH")  var SOUTH;
    @:native("wxWEST")   var WEST;
    @:native("wxEAST")   var EAST;
    @:native("wxALL")    var ALL;

    @:op(A | B) static inline function or(a:Direction, b:SizerFlag):SizerFlag {
        return SizerFlag.orFlags(cast a, b);
    }

}

@:include("wx/defs.h")
@:unreflective
@:native("wxDirection")
extern class DirectionImpl {
}
