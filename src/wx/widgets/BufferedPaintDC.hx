package wx.widgets;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/dcbuffer.h")
@:unreflective
@:native("wxBufferedPaintDC")
@:structAccess
extern class BufferedPaintDC extends BufferedDC {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxBufferedPaintDC")   private static function _new(window:RawPointer<Window>):RawPointer<BufferedPaintDC>;
                                        public static inline function createInstance(window:RawPointer<Window>):Pointer<BufferedPaintDC> {
                                            return Pointer.fromRaw(_new(window));
                                        }
}
